#!/bin/sh
# January 3, 2012
# wget http://ftp.icdevgroup.org/interchange/5.6/tar/interchange-5.6.3.tar.bz2
wget http://ftp.icdevgroup.org/interchange/5.7/tar/interchange-5.7.7.tar.bz2
git clone git://git.icdevgroup.org/interchange
cp --archive interchange interchange-copy

