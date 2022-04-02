#!/bin/bash
#
#
#SBATCH --job-name=CM_wat
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
 
#SBATCH --account=nn8999k
 
#              d-hh:mm:ss
#SBATCH --time=0-02:00:00
 
#SBATCH --mem-per-cpu=1GB
 

module purge
module load Q6/GCC-11.2.0
 
export TMP=/tmp
export TEMP=/tmp
export TMPDIR=/tmp

 
mpirun qdynp eq1.inp > eq1.log
mpirun qdynp eq2.inp > eq2.log
mpirun qdynp eq3.inp > eq3.log
mpirun qdynp eq4.inp > eq4.log
mpirun qdynp eq5.inp > eq5.log
mpirun qdynp eq6.inp > eq6.log
mpirun qdynp md_0500_0500.inp > md_0500_0500.log
mpirun qdynp md_0520_0480.inp > md_0520_0480.log
mpirun qdynp md_0540_0460.inp > md_0540_0460.log
mpirun qdynp md_0560_0440.inp > md_0560_0440.log
mpirun qdynp md_0580_0420.inp > md_0580_0420.log
mpirun qdynp md_0600_0400.inp > md_0600_0400.log
mpirun qdynp md_0620_0380.inp > md_0620_0380.log
mpirun qdynp md_0640_0360.inp > md_0640_0360.log
mpirun qdynp md_0660_0340.inp > md_0660_0340.log
mpirun qdynp md_0680_0320.inp > md_0680_0320.log
mpirun qdynp md_0700_0300.inp > md_0700_0300.log
mpirun qdynp md_0720_0280.inp > md_0720_0280.log
mpirun qdynp md_0740_0260.inp > md_0740_0260.log
mpirun qdynp md_0760_0240.inp > md_0760_0240.log
mpirun qdynp md_0780_0220.inp > md_0780_0220.log
mpirun qdynp md_0800_0200.inp > md_0800_0200.log
mpirun qdynp md_0820_0180.inp > md_0820_0180.log
mpirun qdynp md_0840_0160.inp > md_0840_0160.log
mpirun qdynp md_0860_0140.inp > md_0860_0140.log
mpirun qdynp md_0880_0120.inp > md_0880_0120.log
mpirun qdynp md_0900_0100.inp > md_0900_0100.log
mpirun qdynp md_0920_0080.inp > md_0920_0080.log
mpirun qdynp md_0940_0060.inp > md_0940_0060.log
mpirun qdynp md_0960_0040.inp > md_0960_0040.log
mpirun qdynp md_0980_0020.inp > md_0980_0020.log
mpirun qdynp md_1000_0000.inp > md_1000_0000.log
mpirun qdynp md_0480_0520.inp > md_0480_0520.log
mpirun qdynp md_0460_0540.inp > md_0460_0540.log
mpirun qdynp md_0440_0560.inp > md_0440_0560.log
mpirun qdynp md_0420_0580.inp > md_0420_0580.log
mpirun qdynp md_0400_0600.inp > md_0400_0600.log
mpirun qdynp md_0380_0620.inp > md_0380_0620.log
mpirun qdynp md_0360_0640.inp > md_0360_0640.log
mpirun qdynp md_0340_0660.inp > md_0340_0660.log
mpirun qdynp md_0320_0680.inp > md_0320_0680.log
mpirun qdynp md_0300_0700.inp > md_0300_0700.log
mpirun qdynp md_0280_0720.inp > md_0280_0720.log
mpirun qdynp md_0260_0740.inp > md_0260_0740.log
mpirun qdynp md_0240_0760.inp > md_0240_0760.log
mpirun qdynp md_0220_0780.inp > md_0220_0780.log
mpirun qdynp md_0200_0800.inp > md_0200_0800.log
mpirun qdynp md_0180_0820.inp > md_0180_0820.log
mpirun qdynp md_0160_0840.inp > md_0160_0840.log
mpirun qdynp md_0140_0860.inp > md_0140_0860.log
mpirun qdynp md_0120_0880.inp > md_0120_0880.log
mpirun qdynp md_0100_0900.inp > md_0100_0900.log
mpirun qdynp md_0080_0920.inp > md_0080_0920.log
mpirun qdynp md_0060_0940.inp > md_0060_0940.log
mpirun qdynp md_0040_0960.inp > md_0040_0960.log
mpirun qdynp md_0020_0980.inp > md_0020_0980.log
mpirun qdynp md_0000_1000.inp > md_0000_1000.log

exit 0
