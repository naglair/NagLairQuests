sub EVENT_SPAWN {
   my $ran = int(rand(750));
   quest::settimer(1,$ran);
} 
sub EVENT_TIMER { 
my $random = int(rand(2));	
	if($random == 0){
	plugin::Whisper("Wow...It looks like I pinned that one to the ground pretty good!"); 
	}
	if($random == 1){
	plugin::Whisper("Nice, another grimling kill for my daily report"); 
	}
}