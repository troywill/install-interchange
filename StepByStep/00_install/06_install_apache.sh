#!/bin/sh
pacman --sync apache
emacs /etc/rc.conf
chgrp troy /srv/http
chmod g+w /srv/http
mkdir /srv/http/cgi-bin && chgrp troy /srv/http/cgi-bin && chmod g+w /srv/http/cgi-bin



