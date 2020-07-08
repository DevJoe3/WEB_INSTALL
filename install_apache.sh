ROOT_DIR=$(pwd)

mkdir DOWNLOADS
mkdir apache2
cd DOWNLOADS

#install binaries needed to build C programs
apt-get update
apt-get install build-essential
apt-get install libpcre3-dev
apt install libexpat-dev
apt install apache2-dev




#Gather Apache
wget http://apache.mirror.serversaustralia.com.au//httpd/httpd-2.4.43.tar.gz
#wget http://apache.mirror.serveraustralia.com.au//apr/apr-1.7.0.tar.gz
#wget http://apache.mirror.serveraustralia.com.au//apr/apr-util-1.6.1.tar.gz 

echo =============================================
echo 	    APACHE SUCCESFULLY DOWNLOADED
echo =============================================

gzip -d httpd-2.4.43.tar.gz
tar xvf httpd-2.4.43.tar
cd httpd-2.4.43
./configure --with-included-apr-util --prefix=$ROOT_DIR/apache2
make
make install



echo root directory is $ROOT_DIR
echo =============================================
echo 	    APACHE SUCCESFULLY INSTALLED
echo =============================================
