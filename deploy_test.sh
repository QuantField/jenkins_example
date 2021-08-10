#!/bin/bash


echo '==== Create Python3 virtual environment ====='
ENV_NAME='my_test_env_pyth3'
# Assume tha virtualenv installed by default
virtualenv $ENV_NAME 

echo '==== Activating virtual environment ===='
source $ENV_NAME/bin/activate

echo '==== Installing required packages ===='
$ENV_NAME/bin/pip install -r ./requirements.txt 


## using jenkins path variable JOB_NAME and location, cd to location

cd /var/lib/jenkins/workspace/$JOB_NAME/

echo '==== Runing tests ===='
python -m pytest tests/  --junitxml=./xmlReport/output.html
  
echo '==== Deactivate environment and exit ===='
deactivate 


echo '==== Deleting environment ===='
rm -rf  $ENV_NAME


