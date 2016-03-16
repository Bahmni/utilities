#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import os
import pygit2


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

branch1 = 'origin/release-%s' % args.version1
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
        print "Invalid/Non-existent version"
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
        raise BadBahmniVersionException("Invalid/Non-existent version")
    ref = repo.lookup_reference(branch.name)
    repo.checkout(ref)

    commits = {}

    for commit in repo.walk(repo.head.target):
        commits[commit.id] = commit.author

    return commits

if __name__ == "__main__":
    current_commits = get_commits_of(branch1)
    next_commits = get_commits_of(branch2)

    print "Comparing branches: %s and %s" % (branch1, branch2)

    the_list = get_probable_unmerged_commits(
        current_commits.keys(), next_commits.keys())
    if len(the_list):
        print "List of probable unmerged/cherry picked commit IDs in branch %s:" % branch1
        for id in the_list:
            print "id: %s by: %s <%s>" % (id, current_commits[id].name, current_commits[id].email)
    else:
        print "All Cool"
