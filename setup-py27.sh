#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup-py27.sh
echo "download tensorflow to the workspace"

git clone --recurse-submodules https://github.com/tensorflow/tensorflow


wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
chmod a+x Miniconda-latest-Linux-x86_64.sh
bash Miniconda-latest-Linux-x86_64.sh
rm Miniconda-latest-Linux-x86_64.sh

# for ipython 3
#wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
#chmod a+x Miniconda3-latest-Linux-x86_64.sh
#bash Miniconda3-latest-Linux-x86_64.sh
#rm Miniconda3-latest-Linux-x86_64.sh
#conda create -n py3 python=3 ipython
#source activate py3





export IPYTHON_HOME=/home/ubuntu/miniconda2
export PATH=$PATH:$IPYTHON_HOME/bin


echo "export paths to the .profile file so other terminals can use ipython"

printf "\n\nexport IPYTHON_HOME=/home/ubuntu/miniconda2 PATH=/$PATH:$IPYTHON_HOME/bin"  >> ~/.profile

echo "Create the virtual environment"

conda create -n myPy27 python
source activate myPy27

echo "Make it so a new terminal opens the virtual environment"
printf "\n\nsource activate myPy27"  >> ~/.profile


conda install -c https://conda.anaconda.org/jjhelmus tensorflow

echo "Install some things TensorFlow needs"

conda install matplotlib
conda install scipy


echo "Install jupyter the new version of iPython notebook"

conda install jupyter


jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser







echo "If you have made it this far the installation has finished"
echo "SETUP HAS FINISHED INSTALLING. You can close this terminal window by clicking the x"
echo "-----------------------------------------"
echo ""

echo "You can load the browser by clicking on the following and select open"
echo "http:\\$C9_HOSTNAME:8080/tree"





