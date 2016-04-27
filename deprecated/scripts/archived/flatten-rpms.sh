# You should have the copy of /var/cache/yum/x86_64/6 folder in the packages/package-dump on your machine. That is you should have folders like packages/package-dump/base, packages/package-dump/epel, so on.

for line in `find . -name *.rpm`;
do
	mv $line packages/localrepo
done
rm -r packages/package-dump