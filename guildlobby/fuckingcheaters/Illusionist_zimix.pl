sub EVENT_SAY 
 {
my $change = quest::saylink ("change", 1);
my $reset = quest::saylink ("reset", 1);

   if($text=~/hail/i) 
    {  
       plugin::Whisper("For a ltitle Halloween Flair, I can  [$change] your appearance while you are here in the guild lobby, or [$reset] it to normal? ");
    }
	if($text=~/change/i) 
    {  
       $client->Message(215,"Random Appearance Set!");
	   quest::playerrace(quest::ChooseRandom(14,27,42,43,46,58,60,62,63,66,75,82,85,89,95,108,120,123,150,151,153,161,209,210,211,212,356,367,433,436,454,455,456,458,464,469,470,472,473));
    }
	 
   if($text=~/reset/i) 
    {  
       $client->Message(215,"Appearance Reset!");
	   quest::playerrace(0);
    }
	}