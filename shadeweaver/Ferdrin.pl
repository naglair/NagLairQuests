sub EVENT_SAY { 
  if($text=~/hail/i){
    plugin::Whisper("Welcome $name! Have you been sent to speak with me by [Captain Alim]?");
  }
  if($text=~/captain alim/i){
    plugin::Whisper("Excellent, I presume you wish to speak with me about the [Firefall Club]?");
  }
  if($text=~/firefall club/i){
    plugin::Whisper("If you provide me with three firefall claws, and a wooden practice flail, I am able to fashion them together into a Firefall Claw Club, for you to use.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 7807 => 3, 30579 => 1)) {
    quest::emote("takes the flail and starts placing the claws into it forming a formidable looking weapon. 'This seems a good weapon indeed. Here, you can take it for helping to test my theory of weapon crafting. Safe travels to you friend.'");
    quest::ding();
    quest::summonitem(7813);
  }
  plugin::return_items(\%itemcount);
}
