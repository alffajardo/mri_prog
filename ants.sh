___
sudo apt-get -y install build-essential
sudo apt-get -y install git
sudo apt-get -y install cmake
sudo apt-get -y install cmake-curses-gui
sudo apt-get -y install zlib1g-dev
__
mkdir ~/code 
cd ~/code
git clone https://github.com/stnava/ANTs.git
__
mkdir -p ~/bin/ants
cd ~/bin/ants
ccmake ~/code/ANTs
__
git config --global url."https://".insteadOf git://
__
make
__
If you want to use ANTs scripts, copy them from the source directory Scripts/ to the bin directory where antsRegistration etc are located.
#Agregar a bashrc
export ANTSPATH=${HOME}/bin/ants/bin
export PATH=${ANTSPATH}:$PATH

