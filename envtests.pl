use File::HomeDir;
use Config;
my $home = File::HomeDir->my_home;
my $user = $ENV{USER} || $ENV{USERNAME};
print "[+] User set to => $user\n";
print "[+] OS name set to => $Config{osname}\n";
print "[+] Arch name set to => $Config{archname}\n";
sleep 2;
