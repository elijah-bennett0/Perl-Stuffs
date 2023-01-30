use File::HomeDir;
use Config;
my $home = File::HomeDir->my_home;
chdir($home);
mkdir("OPS");
my $opsdir = "$home\\OPS";
print $opsdir."\n";
print "[?] (L)oad OP or create (N)ew?: ";
my $chc = <STDIN>;
chomp $chc;
if ($chc eq "L" or $chc eq "l") {
	opendir( my $DIR, $opsdir );
	while ( my $entry = readdir $DIR ) {
		next unless -d $opsdir . '/' . $entry;
		next if $entry eq '.' or $entry eq '..';
		print "=" x 20, "\n";
		print "[+] Found OP : $entry\n";
		print "=" x 20, "\n";
	}
	print "\n";
	print "[?] Which OP do you want to load?: ";
	my $chc2 = <STDIN>;
	chomp $chc2;
	if ($chc2 eqv $entry) {
		print "[!] Loading OP $chc2...\n";
	} else {
		print "[-] Not an OP!"
	}
	
	
	
	
	
	
	
	
	
	
	
	
	closedir $DIR;
}
