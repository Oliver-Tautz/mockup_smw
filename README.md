# mockup_smw
Mockup Semantic Media Wiki

## Dont run the scripts! Read this!

I installed SMW on archlinux, so some (eg. the package installs) commands are only working there.

* **mediawiki_install.sh** documented steps to install apache-server,mariadb-atabase, Mediawiki and extensions. **DONT RUN THE SCRIPT!!!** It wont work, because some steps are done manually
* **mediawiki_run.sh** this can be run. Starts server, database and opens wiki in firefox

## Config Files etc.

In `etc/` and `srv/` you can find the config files i use for the server and wiki. With 

`cp -rp etc /etc && cp -rp svr /svr`

you can overwrite the files on your system. It could lead to filesystem rights problems though ...

**wikidata.tgz** is a backup of all mediawiki filesystem data.
