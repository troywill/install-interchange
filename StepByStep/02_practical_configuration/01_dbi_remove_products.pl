#!/usr/bin/env perl
use warnings;
use strict;
use DBI;

my $dbh = DBI->connect('DBI:Pg:dbname=troy', 'troy')
    or die "Couldn't connect to database: " . DBI->errstr;

&delete_products();

sub delete_products {
    my $sth_delete = $dbh->prepare("DELETE FROM products WHERE sku > 'os28007'")
	or die "Couldn't prepare statement: " . $dbh->errstr;

    $sth_delete->execute();

}
