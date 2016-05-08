use strict;
use warnings;
use utf8 ;
binmode (STDOUT, ":utf8" );

sub lettersValue {
	my $testLetter = $_[0] ;
	if ($testLetter eq "ى") {
		$testLetter = "ي";
	}
		if ($testLetter eq "ء") {
		$testLetter = "ا";
	}
	my @letters = qw{ا أ إ آ ب ج د ه و ز ح ط ي ك ل م ن س ع ف ص ق ر ش ت ث خ ذ ض ظ غ};
			my $value = 1 ;
	for (my $i = 0 ; $i <=$#letters ; $i++) {
		if ($i > 3 && $i <= 12) {
			$value++;
		}
		if ($i > 12 && $i <= 21) {
			$value= $value + 10;
		}
		if ($i > 21 && $i <= 30) {
			$value= $value + 100;
		}
		if ($testLetter eq $letters[$i]){
			return $value;
		}
	}
}

	
sub stringCalc {
	my $stringValue = 0;
	my $stringToCalc = $_[0];
	my @letters = split("", $stringToCalc);
	print "جار الحساب...  \n";
	foreach my $letter (@letters){
		$stringValue = $stringValue + lettersValue($letter);
		print "$letter = " .lettersValue($letter). " \n"
	}
	print "جُمل : \"$stringToCalc\" = ".$stringValue;
}
stringCalc(" ") ;
