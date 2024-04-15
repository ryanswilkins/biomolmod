#!/bin/bash

# Local directory to copy from
local_dir=$(pwd)
mode=$1

#########################################################
### CHANGE THIS to your username on saga ### 
remote_user=bentesirinbarge
### CHANGE THIS to the remote directory to copy to ###
remote_dir=/cluster/projects/nn14654k/cube3/bente/biocat
#########################################################

# Rsync options
# -a : Archive mode, which preserves permissions, symbolic links, and other properties
# -v : Verbose mode, to see the progress
# -z : Compress file data during the transfer
# --progress : Show progress during transfer
rsync_options="-avz --progress --backup"

case "$1" in
    to)
        rsync $rsync_options $local_dir/ $remote_user@saga.sigma2.no:$remote_dir
    ;;
    from)
        rsync $rsync_options $remote_user@saga.sigma2.no:$remote_dir/ $local_dir/
    ;;
    *)
        echo "Error: Invalid argument: $1"
        echo "Usage: $0 to   # Copy files to the server"
        echo "       $0 from # Copy files from the server"
        exit 1
    ;;
esac

# Check if rsync was successful
if [ $? -eq 0 ]; then
    echo "Rsync completed successfully."
else
    echo "Rsync encountered an error."
fi
