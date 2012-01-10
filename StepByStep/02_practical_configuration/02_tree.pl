#!/usr/bin/env perl
use warnings;
use strict;
use DBI;

my $dbh = DBI->connect('DBI:mysql:interchange', 'troy', 'pass')
    or die "Couldn't connect to database: " . DBI->errstr;

&display_tree();

sub display_tree {
    my $sth_tree = $dbh->prepare('SELECT * FROM tree ORDER BY code')
	or die "Couldn't prepare statement: " . $dbh->errstr;

    $sth_tree->execute();

    while (my @data = $sth_tree->fetchrow_array()) {
	my $code = $data[0];
	my $parent_fld = $data[1];
	my $mgroup = $data[2];
	my $msort = $data[3];
	my $page = $data[4];
	my $form = $data[5];
	my $name = $data[6];
	my $description = $data[7];
	my $inactive = $data[8];
	my $extended = $data[9];
	my $next_line = $data[10];
	my $indicator = $data[11];
	my $exclude_on = $data[12];
	my $depends_on = $data[13];
	my $super = $data[14];
	my $help_name = $data[15];
	my $img_dn = $data[16];
	my $img_up = $data[17];
	my $img_sel = $data[18];
	my $img_icon = $data[19];
	my $url = $data[20];
	my $member = $data[21];
	if ( $page =~ /scan/ ) {
	    print "--------------------------------------\n";
	}
	foreach (@data) {
	    print "$_:";
	}
	print "\n";
    }
}
__END__

mysql> desc tree;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| code        | int(11)      | NO   | PRI | NULL    | auto_increment |
| parent_fld  | varchar(20)  | YES  | MUL | NULL    |                |
| mgroup      | varchar(255) | YES  | MUL | NULL    |                |
| msort       | varchar(8)   | YES  | MUL | NULL    |                |
| page        | varchar(255) | YES  |     | NULL    |                |
| form        | varchar(255) | YES  |     | NULL    |                |
| name        | varchar(255) | YES  |     | NULL    |                |
| description | varchar(255) | YES  |     | NULL    |                |
| inactive    | int(11)      | NO   |     | 0       |                |
| extended    | text         | YES  |     | NULL    |                |
| next_line   | varchar(255) | YES  |     | NULL    |                |
| indicator   | varchar(255) | YES  |     | NULL    |                |
| exclude_on  | varchar(255) | YES  |     | NULL    |                |
| depends_on  | varchar(255) | YES  |     | NULL    |                |
| super       | varchar(255) | YES  |     | NULL    |                |
| help_name   | varchar(255) | YES  |     | NULL    |                |
| img_dn      | varchar(255) | YES  |     | NULL    |                |
| img_up      | varchar(255) | YES  |     | NULL    |                |
| img_sel     | varchar(255) | YES  |     | NULL    |                |
| img_icon    | varchar(255) | YES  |     | NULL    |                |
| url         | varchar(255) | YES  |     | NULL    |                |
| member      | varchar(1)   | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
22 rows in set (0.01 sec)
