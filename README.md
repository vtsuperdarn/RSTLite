RSTLite
========

Install Instructions
---------------------

#### Requirements

* zlib (dev)

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

TL;DR: RUN INSTALL.SH

Updates
-------------

If any updates are released, and you installed with git, then you can update by going to the folder where the RST is installed and executing
    
    git pull origin master
