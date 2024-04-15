#!/bin/bash -l

cat <<EOF> $1.job
#!/bin/bash -l

################### Gaussian Job Batch Script Example ###################
# Section for defining queue-system variables:
#-------------------------------------

# SLURM-section


#SBATCH --account=nn14654k                                                                                
#SBATCH --job-name=$1
#SBATCH --nodes=$2
#SBATCH --ntasks-per-node=40
#SBATCH --time=$3:00:00
#SBATCH --mem-per-cpu=3G

##SBATCH --qos=devel

######################################
# Section for defining job variables and settings:
#-------------------------------------


input=$1 # Name of input without extention
extention=com # We use the same naming scheme as the software default                                     

module purge
module load Gaussian/g16_C.01

# This one is important; setting the heap-size for the job to 20GB:                                       

export GAUSS_LFLAGS2="--LindaOptions -s 20000000"
#Creating the gaussian temp dir:                                                                          

export GAUSS_SCRDIR=/cluster/work/users/\$USER/\$SLURM_JOB_ID
mkdir -p \$GAUSS_SCRDIR


# Creating aliases and moving files to scratch:                                                           

submitdir=\$SLURM_SUBMIT_DIR
tempdir=\$GAUSS_SCRDIR


cd \$submitdir
cp \$input.com \$tempdir
cp \$input.chk \$tempdir
cd \$tempdir

# Running program, pay attention to command name:                                                         

time g16.ib \$input.com > \$input.out


# Cleaning up and moving files back to home/submitdir:                                                    

cp \$input.out \$submitdir
cp \$input.chk \$submitdir
cp \$input.log \$submitdir

cd \$submitdir

exit 0
EOF

sbatch $1.job


