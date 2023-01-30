my $rootdir = "/root/";
my $homedir = "/root/Desktop/";
print "[*] New project name: ";
my $project = <STDIN>;
chomp $project;
print "[!] Creating project directory...";
system("mkdir $rootdir$project");
