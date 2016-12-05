sub EVENT_SAY { 
if ($text=~/Hail/i){plugin::Whisper("Hello."); }
}
sub EVENT_ITEM { 
	if ($item1=="18846"){plugin::Whisper("Thanks.");
quest::summonitem("13576");
quest::exp("100"); }
}
#END of FILE Zone:grobb  ID:6084 -- Gardunk 

