use Win32::Clipboard;
my $clip = Win32::Clipboard();
my $clipboard;
if ($clipboard = $clip->Get()) {
	print "Clipboard Contents\n";
	print "-" X 20, "\n";
	print $clipboard."\n";
}
else {
	print "Error retrieving contents:
	".Win32::FormatMessage(Win32::GetLastError())."\n";
}