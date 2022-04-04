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
	- Open VirtualBox and select `New` and give the VM a `Name` such as <mark>Ubuntu</mark>. 
	- Allocate at least 1024 MB of memeory to the VM.
	- Create a `virtual hard disk` (*VDI*) and make it a **minimum 30GB** in size and **Dynamically allocated**.
		- If you plan on keeping the VM after the course, we recommend going for 100 GB **fixed size**. 
	
	- When starting the VM for the first time you wil be asked to select a `virtual optical disk file`. This is where you point to the recently downloaded Ubuntu iso file.
	- Install ubuntu by selecting the downloaded ubuntu iso file as your `Media source`.
	- Finish the installation as `minimal` install.

## How to install course software (Ubuntu / VM)
Open a command line and install `git`: 
```bash=1
sudo apt-get install git
```
When git is installed, clone this repo:
```bash=2
git clone https://github.com/isaksengeir/biomolmod.git
````
Move into biomolmod and run the install script
```bash=1
cd biomolmod
./install.sh
```
This will thake ~30 minutes depending on your internet connection. When the install script is done, **restart** the terminal window, and you should be all set for some molecular modeling. 

## Time schedule 
### Mon April 4th
- 09:15 - 12:00
	- Coffee, meet & greet (BOB/GVI)
	- Software install etc (GVI)
	- Basic Bash & SSH (GVI)
	- VR lab session (DS)
- 13:00 - 15:00:
	- Lecture: Basics force fields (BOB)
	- Lecture: Simulations  (BOB)

### Tue April 5th
- 09:15 - 10:00:
	- Lecture: Free energy perturbation (Bob)
- 10:15 - 12:00:
	- Practical: Ion hydration in water (Bob)
- 13:00 - 15:00:
	- Lecture: DFT (GVI)
	- Practical: DFT reference reaction

### Wed April 6th

### Thu April 7th

### Fri April 8th
