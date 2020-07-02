INSTRUCTIONS FOR SETUP
======================

Note throughout that bash scripts may have unmet dependencies. If this occurs, read the terminal report and search for the missing packages, then install them.

First run ./install_apache

This installs and configures the binary file that is the webserver.

Then run ./install_django

This installs Django, including the needed dependencies. It creates a default page ready for use.

Then replace settings.py and wsgi.py with the files in DJANGO_UPDATES. 

This makes the installation work for the directory structure we use here.

Update and replace the httpd.conf file with the file in APACHE_UPDATES.

Add mod_wsgi.so to the module/ directory in /apache2 directory.

Add the WEBSITE_ROOT_DEFINITION to the /apache2/conf/ directory.

Edit it to define the absolute path of the root directory (where apache2 is).

Add the STATIC_ROOT_DEFINITION to the /apache2/conf/ directory.

Update it to read the location where the Django static files will be collected.

Move the MODULES file in APACHE_UPDATES into the directroy /apache2/conf/.

All done !

----------

Run apache with /apache2/bin/apachectl start | stop | restart
