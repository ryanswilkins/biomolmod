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


# Install FreeMaestro
# wget XXX TODO - update on monday!
mkdir -p schrodinger
mkdir -p schrodinger_scratch
tar -xvf schrodinger_suites.tar
printf "\n$PWD/schrodinger\ny\n$PWD/schrodinger_scratch\ny\nn\nn\nn\nn\n" | Maestro_2022-1_Linux-x86_64_Academic/INSTALL
#rm schrodinger_suites.tar
#rm -r Maestro_2022-1_Linux-x86_64_Academic

# Install VMD
wget https://www.ks.uiuc.edu/Research/vmd/vmd-1.9.3/files/final/vmd-1.9.3.bin.LINUXAMD64-CUDA8-OptiX4-OSPRay111p1.opengl.tar.gz
tar -xzf vmd-1.9.3.bin.LINUXAMD64-CUDA8-OptiX4-OSPRay111p1.opengl.tar.gz
cd vmd-1.9.3/
./configure
cd src
sudo make install
cd ../..
#rm vmd-1.9.3.bin.LINUXAMD64-CUDA8-OptiX4-OSPRay111p1.opengl.tar.gz

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


