#!/bin/bash                      
#SBATCH -t 24:00:00                  #  walltime = 24 hrs
#SBATCH -n 32                        #  32 CPU (hyperthreaded) cores
#SBATCH --gres=gpu:A100:1            #  one A100 GPU
#SBATCH --constraint=high-capacity   #  high-capacity GPU

module load openmind/singularity

# Run job in singularity container
singularity exec --nv -B /om2/user/twang6 /om2/user/twang6/miax-dm-imp-at.simg /home/twang6/DM-Improves-AT/train-wa.sh
