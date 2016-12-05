#zone:PoKnowledge

sub EVENT_SAY { 

if($text=~/Hail/i){

plugin::Whisper("Test!"); }
}

sub EVENT_SPAWN {
	quest::popup(Test,Testing,1,1,1);
}



