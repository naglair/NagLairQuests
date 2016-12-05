sub EVENT_SAY { 
if ($text=~/Hail/i){plugin::Whisper("Hail."); }
}
sub EVENT_ITEM { 
	if ($item1=="18847"){plugin::Whisper("Thanks.");
quest::summonitem("13574");
quest::exp("100"); }
}
#END of FILE Zone:halas  ID:5751 -- Field_Priest_Keven 

