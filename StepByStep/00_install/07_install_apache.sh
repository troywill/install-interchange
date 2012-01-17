#!/bin/sh
pacman --sync apache
emacs /etc/rc.conf
chgrp troy /srv/http
chmod g+w /srv/http
mkdir --verbose /srv/http/cgi-bin
chgrp --verbose troy /srv/http/cgi-bin && chmod --verbose g+w /srv/http/cgi-bin


