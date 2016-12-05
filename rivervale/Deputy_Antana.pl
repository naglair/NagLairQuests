sub EVENT_SAY { 
	if($text=~/nice hat/i){
		plugin::Whisper("Thank you, It is worn with pride and is the symbol of the Rivervale Militia");
	}
}

sub EVENT_ITEM {
	plugin::Whisper("I have no use for this, $name.");
	plugin::return_items(\%itemcount);
}