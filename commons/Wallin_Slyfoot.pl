#Wallin_Slyfoot.pl
#Part of Innoruuk Disciple

sub EVENT_SAY { 
	if($text=~/Hail/i){
		if ($race eq "Halfling"){
			plugin::Whisper("What? What do you want? Are you here to assist me?");
		}
		else{
			plugin::Whisper("Hello $name.  I'm a bit busy right now, no time to chat.");#text made up
		}
	}
	if($text=~/assist/i){
		if ($race eq "Halfling"){
			plugin::Whisper("Yes..yes..of course you will. It is a matter of the utmost importance. I need this letter to be delivered to Master Whoopal in the Nektulos forest but I must also get these Brussels sprouts to my granny before they spoil. Please deliver this message for me?");
			quest::summonitem(18957);#Leatherfoot Raider Orders
		}
		else{
			plugin::Whisper("Hello $name.  I'm a bit busy right now, no time to chat.");#text made up
		}
	}
}
sub EVENT_ITEM{
	plugin::Whisper("I don't need this.");#text made up
	plugin::return_items(\%itemcount);
}#Done