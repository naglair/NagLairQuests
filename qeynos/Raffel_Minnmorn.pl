#######################################
#  NPC:  Raffel Minnmorn
#  Zone: qeynos
#  Quest:  Nitrates and the Assassin
#  Loot:  Black Wood Chip (12141) 100%
#  Author:  Andrew80k
#######################################

sub EVENT_AGGRO {
    plugin::Whisper("I shall chop you down as your people chopped down the beauty of the forests!!");
}
sub EVENT_DEATH_COMPLETE {
    plugin::Whisper("Long live the green ..");
}
sub EVENT_SPAWN {
   quest::settimer("talk",60);
   
}
sub EVENT_TIMER {
   if ($timer eq "talk") {  
      plugin::Whisper("Pardon me.  Have you seen a man named Gash Flockwalker?  He hails from Surefall Glade.");
      quest::stoptimer("talk");
      quest::signalwith(1104,2);
   }
}