#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --gres=gpu:v100:1,nvme:100
#SBATCH --time=1:00:00
#SBATCH --mem=64G
#SBATCH --cpus-per-task=10
#SBATCH --account=project_2006678
#SBATCH --reservation=dlintro

module purge
module load pytorch
module list

export DATADIR=/scratch/project_2006678/data
export TORCH_HOME=/scratch/project_2006678/torch-cache

set -xv
python3 $*
