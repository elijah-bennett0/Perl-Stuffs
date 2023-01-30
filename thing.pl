print "[*] New project name: ";
my $project = <STDIN>;
chomp $project;
print "[+] Project name set to '$project'\n";
sleep 1;
print "[!] Creating project directory...\n";
system("mkdir /root/$project");
sleep 3;
my $logname = "log.txt";
print "[!] Creating log file...\n";
system("touch /root/$project/$logname");
sleep 3;
print "[+] Finished!\n";
print "[!] Project located in /root/$project\n";



