#npc - Butcher Goblins
#zone - Butcher
#by Angelox

sub EVENT_COMBAT {
     if($combat_state == 1) {
    plugin::Whisper("Ugly creature near my feet, me thinks that you'll be good to eat!");
 }
}