use DBI;
use strict;
use warnings;
my $dsn = "dbi:mysql:database=my_database_name:host=localhost";
my $username = "my_username";
my $password = "my_password";
# Attempt to connect to the database
my $dbh = DBI->connect($dsn, $username, $password)
   or die "Could not connect to database: $DBI::errstr";
print "Successfully connected to the database!\n";
# Always remember to disconnect when you're done!
$dbh->disconnect;
