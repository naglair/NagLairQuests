sub EVENT_SAY{
  if($text=~/Hail/i){
    plugin::Whisper("What are you doing here?!!  Get out before you find yourself mining for these wretched beasts!");
  }
}

sub EVENT_ITEM{
  if($item1 == 12184){
    plugin::Whisper("You were sent by Geeda!! Here. Take the information. Maybe next you shall earn your [Scout Blade] from Laren. Quickly!! Leave at once!!");
    quest::summonitem(67702);
  }
}
