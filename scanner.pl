use IO::Socket;
use Term::ANSIColor 2.00 qw(:pushpop);
use warnings;
use strict;
print "Single host or multiple hosts? Single host [1] or random hosts [2]?: ";
my $chc = <STDIN>;
chomp $chc;
if($chc == 1) {
	print "Host: ";
	my $host = <STDIN>;
	chomp $host;
	my $socket = IO::Socket::INET->new(PeerAddr => $host , PeerPort => 445 , Proto => 'tcp' , Timeout => 1);
	if ( $socket ) {
		print PUSHCOLOR BRIGHT_GREEN "[+] Port 445 open on $host\n";
        }else{
		print PUSHCOLOR BRIGHT_RED "[-] Port 445 closed on $host\n";
}elsif($chc == 2) {
	
}
}
