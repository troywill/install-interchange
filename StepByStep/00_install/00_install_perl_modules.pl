#!/usr/bin/env perl
use warnings;
use strict;


#!/bin/sh


# pacman --sync perl-digest-md5
pacman --sync perl-digest-sha1
# pacman --sync perl-mime-base64
pacman --sync perl-mime-lite
# pacman --sync perl-uri-url ( not found )
pacman --sync perl-html-tagset
pacman --sync perl-html-entities
pacman --sync perl-bundle-lwp

pacman --sync perl-libwww

pacman --sync perl-parse-recdescent
pacman --sync perl-ole-storage_lite
pacman --sync perl-bundle-lwp
pacman --sync perl-term-readkey
pacman --sync perl-term-readline-perl
pacman --sync perl-text-query
pacman --sync perl-image-size
pacman --sync perl-dbi
pacman --sync perl-safe-hole
pacman --sync perl-tie-shadowhash
pacman --sync perl-set-crontab
pacman --sync perl-io-scalar
pacman --sync perl-storable
pacman --sync perl-spreadsheet-parseexcel
pacman --sync perl-spreadsheet-writeexcel
pacman --sync perl-net-ip-match-regexp


    perl-libwww: git svn
    perl-term-readkey: git svn
    perl-mime-tools: git send-email
    perl-net-smtp-ssl: git send-email TLS support
    perl-authen-sasl: git send-email TLS support
