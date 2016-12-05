#Orc Legionnaire, Crushbone
#Status: COMPLETE
#revised Angelox

sub EVENT_COMBAT{
 if($combat_state == 1) {
  plugin::Whisper("You are no match for a legionnaire!!");
 }
}

sub EVENT_DEATH_COMPLETE{
  plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!");
 }

