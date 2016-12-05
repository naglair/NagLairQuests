
sub EVENT_SAY {
 if($text =~ /Hail/i) {
	plugin::Whisper('Close the door and be gone fool !! You are going to give away my hiding spot!!');
 }
 if($text =~ /powder of reanimation/i) {
	#wrong:
	plugin::Whisper('I can help you get the powder you ask of, if you would supply me with a greater lightstone so that I may see my way out of this place.');
 }

}

sub EVENT_ITEM {
 if($itemcount{10400} == 1) {
	plugin::Whisper('At last I may leave this place!! Good luck destroying my abomination, you will surely need it against my most powerful yet uncontrolable creation!');
#Your faction standing with DarkReflection got better
#Your faction standing with EldritchCollective got worse
#Your faction standing with GemChoppers got worse
	quest::exp(500);
	plugin::Whisper('SORRY, Khrixs Abomination is not in the DB right now!');
	#TODO: spawn the abomination.
 }
}
