if ( m/(args:\[?)(['"])(.*?)(\]?["'])/ ) {
	$first = "$`$1$2";
	$last = "$4$'";
	$orig = $3;
	$var = $3;
	$var =~ s/\./\//g;
	if (-e "$var.js") {
		print "$first/$var.js$last";
	} elsif (-e "$var.html") {
		print "$first/$var.html$last";
	} else {
		print "$first$orig$last";
	} 
} elsif ( m/(viewName:)(['"])([^\/]*?)(["'])/ ) {
	$first = "$`$1$2";
	$last = "$4$'";
	$orig = $3;
	$var = $3;
	$var =~ s/\./\//g;
	if (-e "$var.js") {
		print "$first/$var.js$last";
	} elsif (-e "$var.html") {
		print "$first/$var.html$last";
	} else {
		print "$first$orig$last";
	} 
	
} else {
	print $_;
}
