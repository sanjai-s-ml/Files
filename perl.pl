use strict;
use warnings;
use 5.010; # Enables say() function
# --- Car.pm (Our Class Definition) ---
# This is our class (the blueprint)
package Car;
# The new() subroutine is our constructor
sub new {
   # The first argument to a class method is the class name, 'Car'
   my $class = shift;
   # An anonymous hash reference is created. This will hold our data (attributes).
   my $self = {};
   # We can set default attributes here
   $self->{color} = "blue";
   $self->{doors} = 4;
   $self->{speed} = 0;
   # This is the magic! We bless the hash reference, turning it into an object
   bless $self, $class;
   # We return the new object
   return $self;
}
# --- Main Program ---
package main;
# This is where we create a new object from our Car class
say "Creating a new car object...";
my $my_car = Car->new();
# Now we can interact with our object's attributes
say "My car's color is: " . $my_car->{color};
say "My car has " . $my_car->{doors} . " doors.";
# We can also modify the object's attributes
say "Changing my car's color to red...";
$my_car->{color} = "red";
say "My car's new color is: " . $my_car->{color};
