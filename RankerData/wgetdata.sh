#!/bin/bash
if [ -f MQ2008.rar ]
then
    echo "Use downloaded data to run experiment."
else
    echo "Downloading data."
    wget https://s3-us-west-2.amazonaws.com/xgboost-examples/MQ2008.rar
    unrar x MQ2008.rar
    mv -f MQ2008/Fold1/*.txt .
fi
