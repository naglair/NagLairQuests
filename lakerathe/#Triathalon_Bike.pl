##Custom script  for GM event, created by Shadowblade

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hello, $name! If you visited with my friend on the island you should have something to give me.");
  }

}

  sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 16889 => 1)) {
    plugin::Whisper("Excellent, congratulations  on completing the swim.  Here is something that will help you cross South Karana.  Don't forget to give this to my friend on the bridge before crossing into North Karana.");
    quest::summonitem(21800);
  }  
  }