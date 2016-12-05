 ###########################################
## DEVELOPER: KOVOU
##
## *** NPC INFORMATION ***
##
## NAME: Eracon Krengon
## ID: 1086
## ZONE: qeynos
##
############################################

sub EVENT_ITEM
{
	if(plugin::check_handin(\%itemcount, 12620 => 1))
		{
		plugin::Whisper("hmm yes i see have added him to the List, Here take this back to Jinkus.");
		quest::summonitem(12622); #list of qeynos most wanted
		}
  else { 
    plugin::Whisper("Why do ye give me these items?"); 
    plugin::return_items(\%itemcount); 
  } 
}