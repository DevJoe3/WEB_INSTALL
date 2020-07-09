apt-get install python3.6
apt-get install python3-venv
apt install python3-pip
apt install python3-django

mkdir PROJECT
cd PROJECT

python3.6 -m venv ./VIRT_ENV

source ./VIRT_ENV/bin/activate
pip3 install wheel
pip3 install django
pip3 install mod_wsgi
deactivate

echo =================================================================
echo 		PYTHON, DJANGO, MOD_WSGI INSTALLED SUCCESFULLY
echo =================================================================

#Create default Django project
django-admin startproject django_code
