#De neurodebian http://neuro.debian.net/install_pkg.html?p=ants fue copiado el siguiente codigo seleccionando la opción "only software with..."

wget -O- http://neuro.debian.net/lists/bionic.us-ca.libre | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
sudo apt-key adv --recv-keys --keyserver hkp://pool.sks-keyservers.net:80 0xA5D32F012649A5A9
#Una vez terminado, colocar lo siguiente 
sudo apt-get update
#SI todo fue en orden, por ultimo colocar 
sudo apt-get install ants
