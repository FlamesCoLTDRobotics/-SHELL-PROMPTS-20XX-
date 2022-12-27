#!/usr/bin/env bash

# Update conda and install Python 3.11
conda update -n base -c defaults conda
conda install -c conda-forge python=3.11
# ask the user if u  want to activate the environment
echo "Do you want to activate the environment? (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    conda activate
fi