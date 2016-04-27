configFile="/home/$2/.bashrc"

if [[ -z `grep "^\s*export\s*JASPER_HOME\s*=" $configFile` ]]
then
         echo "export JASPER_HOME='$1'" >> $configFile
else
        sed -i "s|^\s*export\s*JASPER_HOME\s*=.*|export JASPER_HOME='$1'| " $configFile
fi