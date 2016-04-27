userName=$1

sed -i '
$ a\
'"$userName"'	ALL=(ALL)	NOPASSWD: ALL
' /etc/sudoers