# It would sync the bahmni-environment/packages directory to /packages on the dest machine.
# Pass the IP address of the destination machine 
rsync -rh --progress -i --itemize-changes --delete --chmod=Du=rwx,Dg=rwx,Do=rwx,Fu=rwx,Fg=rwx,Fo=rwx -p puppet -e ssh root@192.168.33.10:/root/bahmni-environment
rsync -rh --progress -i --itemize-changes --delete --chmod=Du=rwx,Dg=rwx,Do=rwx,Fu=rwx,Fg=rwx,Fo=rwx -p scripts -e ssh root@192.168.33.10:/root/bahmni-environment
rsync -rh --progress -i --itemize-changes --delete --chmod=Du=rwx,Dg=rwx,Do=rwx,Fu=rwx,Fg=rwx,Fo=rwx -p samples -e ssh root@192.168.33.10:/root/bahmni-environment