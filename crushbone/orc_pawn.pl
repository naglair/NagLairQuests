#Orc chit-chat
#Revised Angelox 10-23-06
#zone: Crushbone

sub EVENT_COMBAT
{
  $rand = rand();
  if(($rand < .3)&&($combat_state == 1))
  {
  plugin::Whisper("Death!!  Death to all who oppose the Crushbone orcs!!");
  }
  if(($rand > .67)&&($combat_state == 1))
  {
  plugin::Whisper("Hail, Emperor Crush!!");
  }
  if(($rand >= .3)  && ($rand <= .67)&&($combat_state == 1))
  { 
  plugin::Whisper("Fall before the might of Clan Crushbone!!");
  }
}

sub EVENT_ATTACK
{
  plugin::Whisper("Centurions!!  Legionnaires!!  Come join the fight!");
}


sub EVENT_DEATH_COMPLETE
{
  plugin::Whisper("You shall have all the Crushbone orc legions on your tail for my death!");
}

