=begin comment
m/reg/exp = match
s/reg/sub/exp = substitute

$name = "ElijAh";

if ($name =~ m/jah/i) { # i means case insensitive
    print "Jah\n";
} else {
    print "No match\n";
}
@unames = ("benneeli1","benneeli2","benneeli3","benneeli4","benneeli13");
foreach $uname (@unames) {
    if ($uname =~ m/benneeli[1\3]/) { # match benneeli1 or benneeli3 and not benneeli13
        print "Match: $uname\n";
    }
}
$number = "aefwbihfebw  wf bwafew 987908 ||}}| 999-fss999-9999";
$number = "sfseNumber:  ==\"9 gd   999-999-9999fse";
if ($number =~ m/\s*(\d{3}-\d{3}-\d{4})/) {
    # \s* says: match some space
    # (\d{3}) says: match 3 digits
    print "Number: $1\n";
} else {
    print "No match\n";
}
=cut
# Initialization
$my_text = "You should try to use regular expressions while drinking an Espresso";
# Matching text
$match_my_text = "express";
if ($my_text =~ m/$match_my_text/) {
	print "Match FOUND\n";
} else {
	print "Match NOT FOUND - Incorrect REGEXP\n";
}
