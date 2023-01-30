=begin
 open phones.txt
 $! is the error variable

phones.txt:
aefwbihfebw  wf bwafew 987908 ||}}| 999-999-9999
awniuj wa777-777-7777dsed  esfdse
sef 666-666-6666fes sef
222-222-2222fsef f esfff-- {}
=cut
# open the file and get a list of lines
open(DATA, "<phones.txt") or die "Could not open phones.txt, $!\n";
@lines = <DATA>;

# search each line for the number using regex
foreach $line (@lines) {
    if ($line =~ m/(\d{3}-\d{3}-\d{4})/) {
        $number = $1;
        print "Number found: $number\n";
    }
}

close(DATA) or die "Could not close DATA, $!\n";

my $file = "phones.txt";
my (@description, $size);
if (-e $file) {
   push @description, 'binary' if (-B _);
   push @description, 'a socket' if (-S _);
   push @description, 'a text file' if (-T _);
   push @description, 'a block special file' if (-b _);
   push @description, 'a character special file' if (-c _);
   push @description, 'a directory' if (-d _);
   push @description, 'executable' if (-x _);
   push @description, (($size = -s _)) ? "$size bytes" : 'empty';
   print "$file is ", join(', ',@description),"\n";
}