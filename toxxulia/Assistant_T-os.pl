sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hmm. You aren't familiar. . .no matter. All is ready. Prepare yourself. Who knows what may happen. . .");
    quest::spawn2(38173,0,0,1630,2137,-54,135);
  }
  if (defined $qglobals{tsoma} && $qglobals{tsoma} == 2) {
    if ($text=~/hail/i) {
      plugin::Whisper("You're late! Never mind. Prepare yourself. I do not trust these magics T`soma has constructed.");
      quest::spawn2(38173,0,0,1630,2137,-54,135);
    }
  }
}
  
sub EVENT_ITEM {
  plugin::return_items(\%itemcount);  
}