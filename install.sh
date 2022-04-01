#!/usr/bin/bash

# Put everything into one directory
mkdir -p biomol_course
cd biomol_course

# Packages needed by course sw
sudo apt-get -y update 
sudo apt-get -y upgrade
sudo apt-get install -y python3-tk python3-pip python3-venv python3-pil python3-pil.imagetk  git pymol make gfortran texlive texlive-latex-extra texlive-fonts-recommended dvipng cm-super


# Git clone repos with sf used in course
git clone https://github.com/isaksengeir/q6
git clone https://github.com/isaksengeir/qgui.git
git clone https://github.com/isaksengeir/REACT.git

# Download & install VMD

# Download & install schrodinger free maestro

# Q6 compile
cd q6/src
sudo make all COMP=gcc

cd ../
cd bin

echo "export PATH=$PWD:\$PATH" >> $HOME/.bash_profile

cd ../../

# Qgui
cd qgui
./INSTALL.py
cd ..

# chemREACT
cd REACT
pip install -r requirements.txt
echo "export PATH=$PWD:\$PATH" >> $HOME/.bash_profile


