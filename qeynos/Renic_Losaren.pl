sub EVENT_SAY { 
if($text=~/Hail/i){plugin::Whisper("Welcome, $name .  Please feel at ease here in the Temple of Thunder.  We, the Knights of Thunder, are here to guide and serve."); }
}
sub EVENT_ITEM { 
	if ($item1=="18715"){plugin::Whisper("Thanks.");
quest::summonitem("13505");
quest::exp("100"); }
}
#END of FILE Zone:qeynos  ID:1055 -- Renic_Losaren 

