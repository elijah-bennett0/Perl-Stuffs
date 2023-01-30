system("clear");
use Backticks;
use IO::Socket;
use Term::ANSIColor 2.00 qw(:pushpop);
use warnings;
use strict;
sub try(&) { eval {$_[0]->()} }
sub throw($) { die $_[0] }
sub catch(&) { $_[0]->($@) if $@ } 
my $dir = "/root/Desktop/";
my $name = "Log.txt";
print "Use default directory? Y/N: ";
my $dirchc = <STDIN>;
chomp $dirchc;
if($dirchc eq "y" or $dirchc eq "Y") {
} elsif($dirchc eq "n" or $dirchc eq "N") {
	print "Directory to use: ";
	my $custdir = <STDIN>;
	chomp $custdir;
	my $dir = $custdir;
} else {
	print "Not an option!";
}
print "Use default log file name? Y/N: ";
my $namechc = <STDIN>;
chomp $namechc;
if($namechc eq "y" or $namechc eq "Y") {
} elsif($namechc eq "n" or $namechc eq "N") {
	print "Name to use(with .txt): ";
	my $custname = <STDIN>;
	chomp $custname;
	my $name = $custname;
} else {
	print "Not an option!";
}
sleep 2;
print PUSHCOLOR BRIGHT_GREEN "[+] Directory set\n";
sleep 1;
print PUSHCOLOR BRIGHT_GREEN "[+] File name set\n";
sleep 1;
try {
	print PUSHCOLOR BRIGHT_YELLOW "[!] Attempting to create log file...\n";
	system("touch $dir $name");
};
catch {
	print "[-] Unable to create file!";
};
my ($sec,$min,$hour,$day,$month,$yr19) = localtime(time);
print PUSHCOLOR BRIGHT_WHITE "Ip to scan: ";
my $ip = <STDIN>;
chomp $ip;
print "Preform an nmap scan? Y/N: ";
my $chc = <STDIN>;
chomp $chc;
my $filemain = "$dir$name";
open(my $f, '>', $filemain);
if($chc eq "y" or $chc eq "Y") {
	my $nmap = `tree Y:\\`;
	sleep 2;
	print $f "===============================\n";
	print $f "[!] Started at: $hour:$min:$sec\n";
	print $f "[!] Starting nmap scan\n";
	print $f "===============================";
	print $f $nmap->stdout;
	print $f "===============================\n";
	print $f "[!] Finished nmap scan\n";
	print $f "===============================\n";
	print PUSHCOLOR BRIGHT_YELLOW "[!] Saved nmap results to the Log file\n";
	print PUSHCOLOR BRIGHT_WHITE "";
} elsif ($chc eq "n" or $chc eq "N") {
}
print "Preform a port scan? Y/N: ";
my $chc2 = <STDIN>;
chomp $chc2;
if($chc2 eq "Y" or $chc2 eq "y") {
	print "Host: ";
	my $host = <STDIN>;
	chomp $host;
	print "Ports seperated by comma: ";
	my $data = <STDIN>;
	my @values = split(',', $data);
	my $val = "";
	print $f "==============================================\n";
	print $f "Port scan on $host starting at $hour:$min:$sec\n";
	print $f "==============================================\n";
	foreach my $val (@values) {
	my $socket = IO::Socket::INET->new(PeerAddr => $host , PeerPort => $val , Proto => 'tcp' , Timeout => 1);
	if( $socket )
	{
    		print PUSHCOLOR BRIGHT_GREEN "[+]Port $val is open\n";
		print $f "Port $val is open\n";
	}
	else
	{
 		print PUSHCOLOR BRIGHT_RED "[-] Port $val is closed\n";
		print $f "Port $val is closed\n";
	}
	}
	}
	print $f "==============================================\n";
	print $f "Port scan finished\n";
	print $f "==============================================\n";
	print PUSHCOLOR BRIGHT_YELLOW "[!] Scan complete\n";
close $f;
