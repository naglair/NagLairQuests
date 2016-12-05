# Ilanic's Scroll

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("My scroll must find my [scroll] so I may finish my research.");
  }
  if($text=~/scroll/i) {
    plugin::Whisper("Kobold! Kobold!");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:erudnint  ID:38150 --  Ilanics_skeleton