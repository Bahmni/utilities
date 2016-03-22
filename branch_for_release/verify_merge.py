#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import os
import pygit2
import sys

from termcolor import colored


class BadBahmniVersionException(Exception):
    pass


parser = argparse.ArgumentParser(
    description="Check for potentially unmerged commits between any two Bahmni branches")
parser.add_argument("-v1", "--version1",
                    help="The lower version you want to compare", type=str)
parser.add_argument("-v2", "--version2",
                    help="The higher version you want to compare with (optional)", type=str, default='master')
parser.add_argument("-r", "--repo", help="The local repository path", type=str)
args = parser.parse_args()

branch1 = "origin/%s" % args.version1 if args.version1 == "master" else 'origin/release-%s' % args.version1
branch2 = "origin/%s" % args.version2 if args.version2 == "master" else 'origin/release-%s' % args.version2
repo = pygit2.Repository(args.repo)


# This, hopefully will be useful someday...
def get_all_branches():
    version = float(args.version1)
    ran = False
    branches = []

    while True:
        str_version = str(version)
        branch_name = 'origin/release-' + \
            (str_version if len(str_version) == 4 else str_version + '0')
        branch = repo.lookup_branch(branch_name, pygit2.GIT_BRANCH_REMOTE)

        if not branch:
            break

        ran = True
        branches.append(branch_name)

        version += 0.01

    if not ran:
        print colored("Invalid/Non-existent version", 'red')
        exit(2)

    branches.append('origin/master')
    return branches


def get_probable_unmerged_commits(commits, next_commits):
    commit_set = set(commits)
    next_commit_set = set(next_commits)

    if commit_set.issubset(next_commit_set):
        return []
    else:
        common_commit_set = next_commit_set.intersection(commit_set)
        return list(commit_set - common_commit_set)


def get_commits_of(branch):
    branch = repo.lookup_branch(branch, pygit2.GIT_BRANCH_REMOTE)
    if not branch:
        raise BadBahmniVersionException(
            colored("Invalid/Non-existent version", 'red'))
    ref = repo.lookup_reference(branch.name)
    repo.checkout(ref)

    commits = {}

    for commit in repo.walk(repo.head.target):
        commits[commit.id] = commit

    return commits


def find_possible_cherry_picks(ids, current_commits, next_commits):
    probable_cherry_picks = {}

    for id in ids:
        message = current_commits[id].message
        patch = current_commits[id].tree.diff_to_tree().patch
        author_email = current_commits[id].author.email

        for sha in next_commits.keys():
            commit = next_commits[sha]
            if commit.message == message and commit.author.email == author_email:
                probable_cherry_picks[id] = commit
                break

    return probable_cherry_picks


if __name__ == "__main__":
    current_commits = get_commits_of(branch1)
    next_commits = get_commits_of(branch2)

    print "Comparing branches: %s and %s" % (colored(branch1, 'yellow'), colored(branch2, 'yellow'))

    ids = get_probable_unmerged_commits(
        current_commits.keys(), next_commits.keys())
    if len(ids):
        print "List of probable unmerged/cherry picked commit IDs in branch %s:" % colored(branch1, 'yellow')
        cherry_picks = find_possible_cherry_picks(
            ids, current_commits, next_commits)

        for id in ids:
            sys.stdout.write("commit %s by %s <%s>" % (id, current_commits[
                             id].author.name, current_commits[id].author.email))
            try:
                other = cherry_picks[id]
                print colored(". Possibly a cherry pick of %s on %s" % (other.id, branch2), 'yellow')
            except KeyError:
                print colored(". Oho! This looks like an unmerged commit.", 'red')
    else:
        print colored("All Cool!", 'green')

    print colored("All views and opinions expressed by me is purely speculative and I could be woefully wrong. Hey, I'm a machine after all. To Err is machine, to forgive is Divine!", 'yellow')
