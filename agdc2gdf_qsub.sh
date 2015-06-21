#!/bin/bash
#PBS -P v10
#PBS -q normal
#PBS -l walltime=12:00:00,mem=2GB,ncpus=1
#PBS -l wd
#@#PBS -m e
#PBS -M alex.ip@ga.gov.au

export MODULEPATH=/projects/u46/opt/modules/modulefiles:$MODULEPATH
module load agdc
module load SQLAlchemy
module load netCDF4/1.0.7
export PYTHONPATH=${gdf_root}:/home/547/axi547/git_code/netcdf-tools/create:$PYTHONPATH

python ${gdf_root}/utils/agdc2gdf.py --storage_type=${storage_type} --satellite=${satellite} --sensors=${sensors} --level=${level} --xmin=${xmin} --xmax=${xmax} --ymin=${ymin} --ymax=${ymax} --tmin=${tmin} --tmax=${tmax} --debug
