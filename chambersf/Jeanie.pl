sub EVENT_SAY {
	if ($text =~/Hail/i) { 
		plugin::Whisper("Greetings $name. I can [".quest::saylink ("scribe", 1)."] your spells for you, but never ".
						"exceeding your [".quest::saylink ("levels", 1)."] of experience. I can also train you ".
						"to [".quest::saylink ("meditate",1)."]");
	}
	elsif($text=~/levels/i) {
		plugin::Whisper("I will scribe your current spells only, never anything you can not understand. I will not ".
						"teach you spells above level 49. You must earn them yourself.");
	}
	elsif ($text=~/erase/i) {
		quest::unscribespells(); 
	}
	elsif ($text=~/meditate/i) {
		quest::setskill(31,200); #meditate
	}
	elsif ($text=~/scribe/i) {
		if($ulevel <= 49) {
			quest::scribespells(50); 
		}
		elsif($ulevel > 49) { 
			plugin::Whisper("You are too advanced for me to teach. You must go into the world to find your spells! If you forgot to scribe your spells I can scribe up to [$levelfifty] for you for free.");
		}
	}
	elsif($text=~/level 50/i) {
		if($ulevel < 50) {
			plugin::Whisper("Nice try, I can't fault you for attempting it! "); 
		}
		elsif($ulevel >= 50) {
			quest::scribespells(49);
			plugin::Whisper("Spells have been scribed to 49!");
		}
	}
}

sub EVENT_ITEM {
	if ($ulevel <= 50){
		if ($platinum == 100){
			quest::scribespells($ulevel);
		}
		elsif ($platinum !=100){
			plugin::Whisper("That's the wrong amount.");
			quest::givecash($copper,$silver,$gold,$platinum );
		}
	}
	elsif ($ulevel <= 49){
		plugin::Whisper("You must reach level 50 before you have to pay for spells.");
		quest::givecash($copper,$silver,$gold,$platinum );
	}
	plugin::return_items(\%itemcount);
}