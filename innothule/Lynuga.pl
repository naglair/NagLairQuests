sub EVENT_SAY {
  if($text=~/hail/i){
   plugin::Whisper("Hrrump?! Who you? $name? What you want with Lynuga? Me am out [collecting]. Leave me be!");
  }
  if($text=~/collecting/i){
   #Lynuga's Gem Collection (START)
   plugin::Whisper("I collect all sort's of thing's. Gem's be my favorite. Me really like rubies. If you have ruby, give to me! Why you want to know? You want to steal my collection?!? I squish you if you do!!");
  }
}

sub EVENT_ITEM {
  #Handin: Ruby
  if(plugin::check_handin(\%itemcount, 10035 => 1)){
   #Lynuga's Gem Collection (END)
   plugin::Whisper("Mmm. Ruby!! Me thank's you! Here take this, me got it off dead someone who try take my collection. Me think's this valuable thing..");
   #Random: Brutechopper, Midnight Mallet, Ivandyr's Hoop
   quest::summonitem(quest::ChooseRandom(10080, 10081, 10082)); 
   quest::faction(22,5);   # + Broken Skull Clan
   quest::faction(292,-5); # - Shadowknights of Night Keep
   quest::faction(66,-5);  # - Da Bashers
   quest::exp(10);  
  }
  else {
   plugin::Whisper("I have no need for this item $name, you can have it back.");
   plugin::return_items(\%itemcount);
  }
}


#EOF