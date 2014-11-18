#!/bin/bash

/bin/echo -e "\e[1;32m Installing Lint Roller...\e[0m"

#sudo mkdir /usr/local/bin/lintroller_files
#/bin/echo -e "\e[1;32m Copying files to standard path /usr/local/bin/lintroller_files...\e[0m"

#sudo cp copyright_input.txt banned_function_library.xls /usr/local/bin/lintroller_files
#/bin/echo -e "\e[0;36m  Installing Lint Roller...\e[0m"

if [ ! -d /usr/local/bin/lintroller_files ]; then
	/bin/echo -e "\e[0;36m  Creating Lint Roller input files folder at /usr/local/bin/lintroller_files\e[0m"
	sudo mkdir /usr/local/bin/lintroller_files
fi

/bin/echo -e "\e[0;36m  Copying input files to /usr/local/bin/lintroller_files...\e[0m"

sudo cp copyright_input.txt banned_function_library.xls /usr/local/bin/lintroller_files
sudo cp lintroller /usr/local/bin
if [ $? -eq 0 ]; then
	/bin/echo -e "\e[0;36m  Success!\e[0m"
else
	/bin/echo -e "\e[0;31m  Copy Failed!\e[0m"
	return 1
fi

#PATH=$PATH:/usr/local/bin/lintroller
sudo chmod 777 /usr/local/bin/lintroller
sudo chmod 666 /usr/local/bin/lintroller_files/copyright_input.txt
sudo chmod 666 /usr/local/bin/lintroller_files/banned_function_library.xls
/bin/echo -e "\e[0;32m  Lint Roller successfully installed!!!\e[0m"
echo ""
