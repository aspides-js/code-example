#!/bin/sh
#SBATCH --export=ALL # export all environment variables to the batch job.
#SBATCH -p pq # submit to the parallel queue
#SBATCH --time=18:00:00 # Maximum wall time for the job.
#SBATCH -A Research_Project-MRC190311 # research project to submit under. 
#SBATCH --nodes=1 # specify number of nodes.
#SBATCH --ntasks-per-node=16 # specify number of processors per node
#SBATCH --mail-type=END # send email at job completion 
#SBATCH --job-name=convert-to-bed

module load SAMtools
module load BAMTools

FILES=$( ls *.bam )

for each in $FILES;
  do each $each;
  bamToBed -i $each > ${each%.bam}.bed;
  done

echo "Job is complete"
