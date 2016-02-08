#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup-py27.sh


wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
chmod a+x Miniconda-latest-Linux-x86_64.sh
bash Miniconda-latest-Linux-x86_64.sh
rm Miniconda-latest-Linux-x86_64.sh
conda create -n myPy27 python
source activate myPy27

# for ipython 3
#wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
#chmod a+x Miniconda3-latest-Linux-x86_64.sh
#bash Miniconda3-latest-Linux-x86_64.sh
#rm Miniconda3-latest-Linux-x86_64.sh
#conda create -n py3 python=3 ipython
#source activate py3





#export IPYTHON_HOME=/home/ubuntu/miniconda2
#export PATH=$PATH:$IPYTHON_HOME/bin


#echo "export paths to the .profile file so other terminals can use ipython"

#printf "\n\nexport IPYTHON_HOME=/home/ubuntu/miniconda2 PATH=/$PATH:$IPYTHON_HOME/bin  >> ~/.profile



conda install -c https://conda.anaconda.org/jjhelmus tensorflow


conda install ipython-notebook


ipython notebook --ip=0.0.0.0 --port=8080 --no-browser

echo "YOu can load the browser by clicking on the following and select open"
echo "http:\\$C9_HOSTNAME:8080/tree"






echo "If you have made it this far the installation has finished"
echo "SETUP.SH HAS FINISHED INSTALLING. You can close this terminal window by clicking the x"
echo "-----------------------------------------"
echo ""






