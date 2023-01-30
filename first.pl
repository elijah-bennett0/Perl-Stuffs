print "Print statement\n";
# single line comment

=begin comment
Scalar: $varname = 1;
Array: @varname = (1,2,3);
Hashes: %varname = ("Apple" => 1, "Orange" => 2);
=cut

$variable1 = "variable";
print "Printing text and using a $variable1\n";

@list1 = (1, 2, 3);
%hash1 = ("Apple" => 1, "Orange" => 2);

# the variable for each key used by the for loop is: $_
for (keys %hash1){
    print "The price of an $_ is $hash1{$_}\n"
}