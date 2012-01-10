#!/usr/bin/env perl
use warnings;
use strict;
use DBI;

my $dbh = DBI->connect('DBI:mysql:interchange', 'troy', 'pass')
    or die "Couldn't connect to database: " . DBI->errstr;

&delete_excess_tree();

sub delete_excess_tree {
    my $sth_delete = $dbh->prepare('DELETE FROM tree WHERE code >= 58')
	or die "Couldn't prepare statement: " . $dbh->errstr;

    $sth_delete->execute();

}
