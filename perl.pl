use DBI;
use strict;
use warnings;
my $dsn = "dbi:SQLite:dbname=test.db";
my $dbh = DBI->connect($dsn, "", "") or die "Could not connect to database: $DBI::errstr";
print "Successfully connected to the SQLite database!\n";
$dbh->do("CREATE TABLE IF NOT EXISTS users (id INTEGER, name VARCHAR(255))");
print "Created 'users' table!\n";
$dbh->disconnect;
