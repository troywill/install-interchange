#!/usr/bin/env perl
use warnings;
use strict;
use DBI;

my $dbh = DBI->connect('DBI:mysql:interchange', 'troy', 'pass')
    or die "Couldn't connect to database: " . DBI->errstr;

my $sth_products = $dbh->prepare('SELECT * FROM products ORDER BY sku')
    or die "Couldn't prepare statement: " . $dbh->errstr;

$sth_products->execute();

while (my @data = $sth_products->fetchrow_array()) {
    my $sku = $data[0];
    my $description = $data[1];
    print "$sku => $description\n";
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
