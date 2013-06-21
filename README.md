RSTLite
========

Install Instructions
---------------------

#### Requirements

* gcc (incl. c++)

UBUNTU

	sudo apt-get install gcc
	
openSUSE

	zypper install -y gcc gcc-c++ make

* zlib (dev)

UBUNTU

	sudo apt-get install zlib1g-dev
	

* ncurses (dev)

UBUNTU

	sudo apt-get install ncurses-dev

openSUSE

	sudo zypper install ncurses-devel
	
#### Install

1) clone this repo with:

    git clone https://github.com/vtsuperdarn/RSTLite.git 
    
requires you to install git (RECOMMENDED)    
OR     
download the repo as a zip file

2) check `.profile.bash` and make sure `OSTYPE` and `SYSTEM` are set to 'linux' if using Linux or 'darwin' if using MacOS


3) execute 

    ./install.sh

4) reset your terminal or open a new one

5) rejoice

6) OPTIONAL: you can create a link to it with a nicer name, eg /rst or ~/rst like so

    sudo ln -s /path/to/rst /rst

7) more rejoicing


Updates
-------------

If any updates are released, and you installed with git, then you can update by going to the folder where the RST is installed and executing
    
    git pull origin master
