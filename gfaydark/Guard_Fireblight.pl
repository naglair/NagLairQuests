#npc - Gfaydark Guard Protectors
#zone - Gfaydark
#by Angelox

sub EVENT_COMBAT {
   if($combat_state == 1) {
   plugin::Whisper("For the defense of Kelethin!!");
   }
}

sub EVENT_SIGNAL {
   plugin::Whisper("For the protection of all Fier'Dal, there shall be no mercy for your kind.");
}