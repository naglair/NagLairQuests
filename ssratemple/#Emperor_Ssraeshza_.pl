
sub EVENT_DEATH_COMPLETE {
  quest::emote("'s corpse says 'How...did...ugh...'");
  quest::spawn2(162210,0,0,953,-332,403.1,190); #Shissar Wraith
  quest::spawn2(162210,0,0,953,-324,403.1,190);
  quest::spawn2(162210,0,0,953,-316,403.1,190);
  quest::spawn2(162210,0,0,937,-332,403.1,190);
  quest::spawn2(162210,0,0,937,-324,403.1,190);
  quest::spawn2(162210,0,0,937,-316,403.1,190);
  quest::signalwith(162260,2,0); #EmpCycle
}

sub EVENT_SLAY {
  plugin::Whisper("Your god has found you lacking.");
}


# EOF zone: ssratemple ID: 162227 NPC: #Emperor_Ssraeshza_ (Real)