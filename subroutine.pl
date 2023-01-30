=begin comment
sub print_hi {
    @args = @_; # put all args into a list called args
    #print ref(\@args); # print the type of @args (ARRAY)
    foreach $arg (@args) { 
        # print each arg in @args
        print "Arg: $arg\n";
    }
}
print_hi("Hey", "Hi");
sub give_me_a_list {
    @array = @_; @_ is an array of all args. $_[0] is first arg, $_[1] is second arg etc
    print @array;
}
give_me_a_list((1,2,3));
# Global variable
$string = "Hello, World!";

# Function definition
sub say_hello_perl {
    # Private variable
    my $string; # this makes sure the $string outside keeps its value while reassigning it inside the function scope 
    $string = "Hello, Perl!";
    print "Inside the function $string\n";
}
# Function call
say_hello_perl();
print "Outside the function $string\n";
=cut

@car_prices = (100, 250, 95, 1300, 4534, 102, 100, 97);
@flight_prices = (85.20, 79.99, 45.30, 130, 45.34, 110.25, 100, 917);
# define subroutines
sub min {
    # takes an array as an arg
    $arg_ref = $_[0]; # ref the array
    @nums = @$arg_ref; # create the array from the ref
    my $min;
    $min = @nums[0];
    foreach $num (@nums) {
        if ($num < $min) {
            $min = $num;
        }
    }
    return ($min);
}
sub max {
    # takes an array as an arg
    # takes an array as an arg
    $arg_ref = $_[0]; # ref the array
    @nums = @$arg_ref; # create the array from the ref
    my $max;
    $max = @nums[0];
    foreach $num (@nums) {
        if ($num > $max) {
            $max = $num;
        }
    }
    return ($max);
}

$car_price_ref = \@car_prices;
$min_car_price = min($car_price_ref);
$max_car_price = max($car_price_ref);
$flight_price_ref = \@flight_prices;
$min_flight_price = min($flight_price_ref);
$max_flight_price = max($flight_price_ref);

$car_dif = $max_car_price - $min_car_price;
$flight_dif = $max_flight_price - $min_flight_price;

print "$car_dif\n";
print "$flight_dif\n";