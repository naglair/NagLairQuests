sub EVENT_AGGRO {
        plugin::Whisper("Imagine every debilitating disease in the world stripping away your body and mind. Now prepare to experience that feeling by a hundred fold!");
}

sub EVENT_DEATH_COMPLETE {
        quest::signalwith(223158,13010,0);
        plugin::Whisper("Defeat by mortals. . . impossible. The power of decay still beckons for you. . . someday. . .");
}

sub EVENT_SIGNAL {
  if ($signal == 66){
     quest::depop();
}
 }