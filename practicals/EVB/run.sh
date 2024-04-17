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
module load GCC/12.2.0
module load iimpi/2022b
 
export TMP=/tmp
export TEMP=/tmp
export TMPDIR=/tmp

 
mpirun Qdyn6p eq1.inp > eq1.log
mpirun Qdyn6p eq2.inp > eq2.log
mpirun Qdyn6p eq3.inp > eq3.log
mpirun Qdyn6p eq4.inp > eq4.log
mpirun Qdyn6p eq5.inp > eq5.log
mpirun Qdyn6p md_0500_0500.inp > md_0500_0500.log
mpirun Qdyn6p md_0520_0480.inp > md_0520_0480.log
mpirun Qdyn6p md_0540_0460.inp > md_0540_0460.log
mpirun Qdyn6p md_0560_0440.inp > md_0560_0440.log
mpirun Qdyn6p md_0580_0420.inp > md_0580_0420.log
mpirun Qdyn6p md_0600_0400.inp > md_0600_0400.log
mpirun Qdyn6p md_0620_0380.inp > md_0620_0380.log
mpirun Qdyn6p md_0640_0360.inp > md_0640_0360.log
mpirun Qdyn6p md_0660_0340.inp > md_0660_0340.log
mpirun Qdyn6p md_0680_0320.inp > md_0680_0320.log
mpirun Qdyn6p md_0700_0300.inp > md_0700_0300.log
mpirun Qdyn6p md_0720_0280.inp > md_0720_0280.log
mpirun Qdyn6p md_0740_0260.inp > md_0740_0260.log
mpirun Qdyn6p md_0760_0240.inp > md_0760_0240.log
mpirun Qdyn6p md_0780_0220.inp > md_0780_0220.log
mpirun Qdyn6p md_0800_0200.inp > md_0800_0200.log
mpirun Qdyn6p md_0820_0180.inp > md_0820_0180.log
mpirun Qdyn6p md_0840_0160.inp > md_0840_0160.log
mpirun Qdyn6p md_0860_0140.inp > md_0860_0140.log
mpirun Qdyn6p md_0880_0120.inp > md_0880_0120.log
mpirun Qdyn6p md_0900_0100.inp > md_0900_0100.log
mpirun Qdyn6p md_0920_0080.inp > md_0920_0080.log
mpirun Qdyn6p md_0940_0060.inp > md_0940_0060.log
mpirun Qdyn6p md_0960_0040.inp > md_0960_0040.log
mpirun Qdyn6p md_0980_0020.inp > md_0980_0020.log
mpirun Qdyn6p md_1000_0000.inp > md_1000_0000.log
mpirun Qdyn6p md_0480_0520.inp > md_0480_0520.log
mpirun Qdyn6p md_0460_0540.inp > md_0460_0540.log
mpirun Qdyn6p md_0440_0560.inp > md_0440_0560.log
mpirun Qdyn6p md_0420_0580.inp > md_0420_0580.log
mpirun Qdyn6p md_0400_0600.inp > md_0400_0600.log
mpirun Qdyn6p md_0380_0620.inp > md_0380_0620.log
mpirun Qdyn6p md_0360_0640.inp > md_0360_0640.log
mpirun Qdyn6p md_0340_0660.inp > md_0340_0660.log
mpirun Qdyn6p md_0320_0680.inp > md_0320_0680.log
mpirun Qdyn6p md_0300_0700.inp > md_0300_0700.log
mpirun Qdyn6p md_0280_0720.inp > md_0280_0720.log
mpirun Qdyn6p md_0260_0740.inp > md_0260_0740.log
mpirun Qdyn6p md_0240_0760.inp > md_0240_0760.log
mpirun Qdyn6p md_0220_0780.inp > md_0220_0780.log
mpirun Qdyn6p md_0200_0800.inp > md_0200_0800.log
mpirun Qdyn6p md_0180_0820.inp > md_0180_0820.log
mpirun Qdyn6p md_0160_0840.inp > md_0160_0840.log
mpirun Qdyn6p md_0140_0860.inp > md_0140_0860.log
mpirun Qdyn6p md_0120_0880.inp > md_0120_0880.log
mpirun Qdyn6p md_0100_0900.inp > md_0100_0900.log
mpirun Qdyn6p md_0080_0920.inp > md_0080_0920.log
mpirun Qdyn6p md_0060_0940.inp > md_0060_0940.log
mpirun Qdyn6p md_0040_0960.inp > md_0040_0960.log
mpirun Qdyn6p md_0020_0980.inp > md_0020_0980.log
mpirun Qdyn6p md_0000_1000.inp > md_0000_1000.log

exit 0
