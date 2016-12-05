#npc - Butcher Guard Protectors
#zone - Butcher
#by Angelox

sub EVENT_COMBAT {
    if($combat_state == 1) {
    plugin::Whisper("For the glory of Kaladim!!");
    plugin::Whisper("You are no more");
 }
}
#END of FILE Zone:butcher  ID:68064 -- Glorin_Binfurr 

