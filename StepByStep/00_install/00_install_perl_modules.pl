#!/usr/bin/env perl
use warnings;
use strict;

my @modules = qw (
		   perl-digest-sha1
		   perl-mime-lite pacman
		   perl-html-tagset
		   perl-html-entities
		   perl-bundle-lwp
		   perl-libwww
		   perl-parse-recdescent
		   perl-ole-storage_lite
		   perl-bundle-lwp
		   perl-term-readkey
		   perl-term-readline-perl
		   perl-text-query
		   perl-image-size
		   perl-dbi
		   perl-safe-hole
		   perl-tie-shadowhash
		   perl-set-crontab
		   perl-io-scalar
		   perl-storable
		   perl-spreadsheet-parseexcel
		   perl-spreadsheet-writeexcel
		   perl-net-ip-match-regexp
);

foreach my $module ( @modules ) {
  my $command = "pacman --sync $module";
  print "==> $command\n";
  system $command;
}
