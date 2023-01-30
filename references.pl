=begin comment
$price = 500;
$price_scalarref = \$price; # location of $price
@names = ('hello', 'world');
$names_arrayref = \@names; # location of @names
%bank_accounts = ('John Boy' => 1345.56, 'Mary Sue', => 12,023.11);
$bank_hashref = \%bank_accounts; # location of %bank_accounts
print $price_scalarref . " $$price_scalarref\n";
print $names_arrayref . " @$names_arrayref\n";
$john = %$bank_hashref{'John Boy'};
print $bank_hashref . " $john\n";
print "Type: " . ref($price_scalarref);
sub print_names {
    @names = ('hello', 'world');
    foreach $name (@names) {
        print "$name\n";
    }
}
print_names(); # or &print_names; to call the function
$ref_of_function = \&print_names;
print &$ref_of_function; # call using reference
=cut
