#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup-pip-tf.sh





echo "Installing PIP and Virtual Environment"

sudo apt-get install python-pip python-dev python-virtualenv

echo "--------------------------------------------------------------"
echo ". "

echo "make the tensorflow environment"

virtualenv --system-site-packages ~/virtual-tf

echo "--------------------------------------------------------------"
echo ". "


echo "Activate the environemtn use deactivate to get your cursor back"
source ~/virtual-tf/bin/activate 

echo "Make it so a new terminal opens the virtual environment"
printf "\n\nsource ~/virtual-tf/bin/activate "  >> ~/.profile


echo "--------------------------------------------------------------"
echo ". "

echo "Now intall tensorFlow into the enviroment"

pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl



echo "Lets try to let pip install tensorflow into our workspace"

mkdir tensorflow



#printf "\n\nexport PYTHONPATH=/home/ubuntu/workspace/tensorflow:/$PYTHONPATH\nexport PATH=/home/ubuntu/workspace/tensorflow/bin:/$PATH"  >> ~/.profile



#export PYTHONPATH=/home/ubuntu/workspace/tensorflow:$PYTHONPATH
#export PATH=/home/ubuntu/workspace/tensorflow/bin:$PATH


#PYTHONUSERBASE=/home/ubuntu/workspace/tensorflow pip install --user --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl


pip install matplotlib


pip install git+git://github.com/tensorflow/skflow.git



echo "------------------------Tensorflow installed--------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"

echo ". "

#echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
#echo "Kind of wasteful but it isn't on our computer anyway"

#deactivate

git clone --recurse-submodules https://github.com/tensorflow/tensorflow




echo "--------------------------------------------------------------"
echo ". "


pip install --upgrade ipython
pip install --upgrade jupyter

jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser



echo "deactivate    to get out of the virtual enviroment"





