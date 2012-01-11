#!/usr/bin/env perl
use warnings;
use strict;
use DBI;

# my $dbh = DBI->connect('DBI:mysql:interchange', 'troy', 'pass')


my $dbh = DBI->connect("dbi:Pg:dbname=troy", "troy")
    or die "Couldn't connect to database: " . DBI->errstr;


&display_by_sku();
&display_by_prod_group();

sub display_by_sku {
    my $sth_products = $dbh->prepare('SELECT * FROM products ORDER BY sku')
	or die "Couldn't prepare statement: " . $dbh->errstr;

    $sth_products->execute();

    while (my @data = $sth_products->fetchrow_array()) {
	my $sku = $data[0];
	my $description = $data[1];
	my $title = $data[2];
	my $template_page = $data[3];
	my $comment = $data[4];
	my $thumb = $data[5];
	my $image = $data[6];
	my $price = $data[7];
	my $wholesale = $data[8];
	my $prod_group = $data[9];
	my $category = $data[10];
	my $tax_category = $data[11];
	my $nontaxable = $data[12];
	my $weight = $data[13];
	my $option_type = $data[14];
	my $author = $data[15];
	my $related = $data[16];
	my $featured = $data[17];
	my $gift_cert = $data[18];
	my $download = $data[19];
	my $dl_type = $data[20];
	my $dl_location = $data[21];
	my $inactive = $data[22];
	my $url = $data[23];
	my $sale_price = $data[24];
	my $image_large = $data[25];
	
	print "$sku: $description [ $prod_group -> $category ]\n";
    }

    
}

sub display_by_prod_group {
    my $sth_group = $dbh->prepare('SELECT * FROM products ORDER BY prod_group, category, sku')
	or die "Couldn't prepare statement: " . $dbh->errstr;

    $sth_group->execute();

    while (my @data = $sth_group->fetchrow_array()) {
	my $sku = $data[0];
	my $description = $data[1];
	my $title = $data[2];
	my $template_page = $data[3];
	my $comment = $data[4];
	my $thumb = $data[5];
	my $image = $data[6];
	my $price = $data[7];
	my $wholesale = $data[8];
	my $prod_group = $data[9];
	my $category = $data[10];
	my $tax_category = $data[11];
	my $nontaxable = $data[12];
	my $weight = $data[13];
	my $option_type = $data[14];
	my $author = $data[15];
	my $related = $data[16];
	my $featured = $data[17];
	my $gift_cert = $data[18];
	my $download = $data[19];
	my $dl_type = $data[20];
	my $dl_location = $data[21];
	my $inactive = $data[22];
	my $url = $data[23];
	my $sale_price = $data[24];
	my $image_large = $data[25];
	
	print "$prod_group -> $category, $sku: $description \n";
    }

    
}

__END__

    mysql> desc products;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| sku           | char(64)      | NO   | PRI | NULL    |       |
| description   | varchar(128)  | NO   |     | NULL    |       |
| title         | varchar(128)  | NO   | MUL |         |       |
| template_page | varchar(64)   | YES  |     | NULL    |       |
| comment       | text          | YES  |     | NULL    |       |
| thumb         | varchar(128)  | YES  |     | NULL    |       |
| image         | varchar(64)   | YES  |     | NULL    |       |
| price         | decimal(12,2) | NO   | MUL | NULL    |       |
| wholesale     | varchar(255)  | YES  |     | NULL    |       |
| prod_group    | varchar(64)   | NO   | MUL |         |       |
| category      | varchar(64)   | NO   | MUL |         |       |
| tax_category  | varchar(255)  | YES  |     | NULL    |       |
| nontaxable    | char(3)       | YES  |     | NULL    |       |
| weight        | varchar(12)   | NO   |     | 0       |       |
| option_type   | varchar(255)  | YES  |     | NULL    |       |
| author        | varchar(255)  | YES  |     | NULL    |       |
| related       | text          | YES  |     | NULL    |       |
| featured      | varchar(32)   | YES  |     | NULL    |       |
| gift_cert     | varchar(3)    | YES  |     |         |       |
| download      | varchar(255)  | YES  |     | NULL    |       |
| dl_type       | varchar(255)  | YES  |     | NULL    |       |
| dl_location   | varchar(255)  | YES  |     | NULL    |       |
| inactive      | varchar(3)    | YES  |     |         |       |
| url           | varchar(255)  | YES  |     | NULL    |       |
| sale_price    | varchar(255)  | YES  |     | NULL    |       |
| image_large   | varchar(255)  | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
26 rows in set (0.01 sec)
