#! /usr/bin/perl

$output = "";
while (@ARGV) {
	if($ARGV[0] eq "-o") {
		shift;
		$output = $ARGV[0];
	} elsif($ARGV[0] eq "--part") {
		shift;
		$input = $ARGV[0];
	}
	shift;
}
open INP, "$input" or die "Can't open input $input";
while (<INP>) {
	print "Input is: $_";
}
close INP;

open FILE, ">$output" or die "Can't open $output";
print FILE "int foo(void) {return 7;}\n";
close FILE;
