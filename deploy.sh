#!/bin/sh
set -ex
# install dependencies

     apt-get update
     echo "işlem başladı....."
     apt install mtools make python3 make python3-pip -y
     #rm /usr/lib/python3.11/EXTERNALLY-MANAGED
     #pip install --upgrade pip
     #pip install --no-cache-dir --upgrade pip
  #pip3 install --break-system-packages --upgrade package    
   #  pip3 install sphinx-build
   #  pip3 install rst2pdf
   #  pip3 install sphinx-sitemap
pip install --user sphinx-build
pip install --user rst2pdf
pip install --user phinx-sitemap
#apt install python3 python make

# install font
#wget https://github.com/dejavu-fonts/dejavu-fonts/releases/download/version_2_37/dejavu-fonts-ttf-2.37.zip -O font.zip
#unzip font.zip
#mv dejavu-*/ttf /usr/share/fonts/
#fc-cache -fv
# build
sh build.sh
mkdir /output -p
cp -r build/pdf/* /output
cp -r build/html/* /output
cp robots.txt /output
