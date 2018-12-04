#Para instalar fsl 
Descargar archivo fslinstaller.py en https://fsl.fmrib.ox.ac.uk/fsldownloads_registration
#luego 
cd ~/Downloads
sudo python fslinstaller.py
#Agregar a bashrc 
export LD_LIBRARY_PATH=/usr/lib/openblas-base/
export PATH="/usr/local/fsl/bin:$PATH"

#Para instalar fsleyes descargar la versión que corresponda de 
https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FSLeyes#Install_standalone_application_.28recommended.29
#Una vez teniendo la descargar, hacer lo siguiente
cd /usr/local/fsl/bin/
sudo mv FSLeyes FSLeyes_backup
sudo unzip /path/to/downloaded/FSLeyes_latest.zip
#crear fsleyes.sh en desktop con el siguiente código:
#!/bin/sh
if [ `uname` = "Linux" ] ; then
   /usr/local/fsl/bin/FSLeyes/fsleyes $@
elif [ `uname` = "Darwin" ] ; then
    ${FSLDIR}/bin/FSLeyes.app/Contents/MacOS/fsleyes $@
fi
#copiar el archivo fsleyes.sh a directorio de fsl
sudo mv /home/usuario/Desktop/fsleyes.sh  /usr/local/fsl/bin
#Ahora agregar alias bash_profile con lo siguiente
#abre una nueva terminal y ahí escribe: nano .bash_profile y ya dentro de ese, ahora si colocar lo siguiente:
alias FSLeyes='bash /usr/local/fsl/bin/fsleyes.sh'
#Ya esta listo y debe funcionar corriendo FSLeyes en la terminal
