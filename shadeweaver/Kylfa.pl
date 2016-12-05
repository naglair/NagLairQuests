sub EVENT_SAY { 
  if($text=~/hail/i){
    plugin::Whisper("Greetings, young one, what is it that you [seek]?");
  }
  if($text=~/seek a club/i){
    plugin::Whisper("Ahh, so you seek the Shredder Claw Club, aye? Indeed, I am the apprentice to Captain Alim who was trained to make that item. I will craft one for you if you wish to gather the [components].");
  }
  if($text=~/components/i){
    plugin::Whisper("Return to me with three Shredder Claws, and a wooden practice flail, and I will attach the claws to the flail and create a Shredder Claw Club for you to use out here in the Thicket.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 7809 => 3, 30579 => 1)) {
    plugin::Whisper("takes the flail and starts placing the claws into it forming a formidable looking weapon. 'This seems a good weapon indeed. Here, you can take it for helping to test my theory of weapon crafting. Safe travels to you friend.'");
    quest::ding();
    quest::summonitem(7814);
  }
  plugin::return_items(\%itemcount);
}
