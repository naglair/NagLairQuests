sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Oh. hello there $name.  Thank you for stopping by. but this is just not a very good time for visitors.  My daughter is very upset over what has happened."); }

if ($text=~/what has happened/i) {
  plugin::Whisper("Oh my, I thought everyone had heard by now. Behari has gone missing. Been quite some time now, in fact. Even the king had gotten involved in the search for him, but...");
  quest::emote("Jalil lowers his voice to a whisper so as not to upset his daughter,");
  plugin::Whisper("everyone has about given up hope. Soroush was the last we know of that had seen him, but he had very little helpful information.");
}
if ($text=~/who is soroush/i) {
   plugin::Whisper("Soroush has taken over Behari's duties... temporarily, at least. He can usually be found right in the throne room in case he is needed.");
  
}
}
sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 5996 =>1 )) {
    plugin::Whisper("Ah this was my wife Aisha's locket.  She had given it to Kalila.  Thanks so much for returning it.  Here take this belt as my thanks.");
    quest::summonitem(5995);
  }
  plugin::return_items(\%itemcount);
}

#END of FILE Zone:sharvahl  ID:155090 -- Jalil_Talih 

