# Bio-molecular modeling 2022
Welcome to Biomolecular modeling 2022.


## What is this?
This repo contains `install.sh`, a script for installing course
software on under `Ubuntu`.
> Do I need ubuntu for the course?

Yes, you do, but do not worry, we will show how to get it and also remove it when the course is over (if you are not already runing linux, that is).

## Not a linux user already?
If you are using MacOS or Windows, we will simply install VirtaulBox and run Ubuntu on your existing opertaing system.
1. Download the [Ubuntu 20.04.4 iso image](https://ubuntu.com/download/desktop)
2. Download and install [virtualbox](https://virtualbox.org)
	- Open VirtualBox and select `New`
	- Make the VM **minimum 30GB** in size
	- Install ubuntu by selecting the downloaded ubuntu iso file as your `Media source`.
	- Finish the installation as normal install.

## How to install course software on Ubuntu?

### Free Maestro
Download and install [Free Maestro](https://www.schrodinger.com/freemaestro)

### VMD
Download and install [VMD](https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=VMD)


### In-house software (Q, Qgui & chemREACT)
Do 1 or 2:
1. Download the install.sh to you local Ubuntu machine or
2. Install `git` and then clone this repo:
   - sudo apt-get install git
   - git clone https://github.com/isaksengeir/biomolmod.git

Run the install script
```bash=1
./install.sh
```

You are now all set for some molecular modeling. 

	 

