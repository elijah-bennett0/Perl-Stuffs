# perl array
@list1 = ("elem1", "elem2", "elem3"); 
# perl hash (in python: dictionary)
%elems = ($list1[0] => 1, $list1[1] => 5, $list1[2] => 8);

# looping through the keys of the hash
# the variable for each key used by the for loop is: $_
for (keys %elems){
    print "$_ has $elems{$_}\n";
}