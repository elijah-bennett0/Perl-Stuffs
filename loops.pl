=begin comment
for ($count = 10; $count > 0; $count--) {
    print "$count\n";
}
print "Blastoff\n";

@colors = ("red", "blue", "green");

foreach $color (@colors) {
    print "I like $color\n";
}

$i = 1;
while ($i > 0) {
    print "$i\n";
    $i--;
}

until ($i == 5) {
    print "$i\n";
    $i++;
}

$count = 3;
do {
    print "$count\n";
    $count--;
} while ($count > 0)

# next is like pass in Python
# last is like break in Python
=cut
@NUMBERS = (951,402,984,651,360,69,408,319,601,485,980,507,725,547,544,615,83,165,141,501,263,617,865,575,219,390,237,412,566,826,248,866,950,626,949,687,217,815,67,104,58,512,24,892,894,767,553,81,379,843,831,445,742,717,958,609,842,451,688,753,854,685,93,857,440,380,126,721,328,753,470,743,527);
# write your code below
foreach $number (@NUMBERS) {
	if ($number % 2 == 0) {
		print $number . "\n";
	}
    last if ($number == 237);
}