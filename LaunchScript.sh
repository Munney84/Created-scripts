#!/bin/bash
#Set the 1st variable as the name you will create the new file under
filename=$1

# if there is no file name, inform the user and exit
if [ -z $filename ];
    then 
    echo "please add a file name"
    exit 1

else
#create a new file for script
touch nano ~/bin/$filename.sh
#insert header to the file
echo -e "#!/bin/bash\n# Title		:\n# Description	:  \n#		\n# Author	:Clarence Munn\n# Date		:$DATE \n# Version	: 1\n# Usage		: $filename.sh \n# Notes		:\n#=======================================================================" >> ~/bin/$filename.sh

#give permissions for the script to be run
chmod 744 ~/bin/$filename.sh
fi
