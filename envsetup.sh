# runtime environment setup script for running bcc tools
# You can use this as follows:
# sudo -s
# . envsetup.sh


# set BCC_PATH as the appropriate path where bcc was installed
BCC_PATH=~/bcc

export PYTHONPATH=$BCC_PATH/lib/python2.7/dist-packages/:$PYTHONPATH
export LD_LIBRARY_PATH=$BCC_PATH/lib:$LD_LIBRARY_PATH
export PATH=$BCC_PATH/share/bcc/tools:$PATH
