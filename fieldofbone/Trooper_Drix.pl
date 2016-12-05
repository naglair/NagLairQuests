sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Can't you see I am busy on patrol!");
  }
  if ($text=~/calling/i) {
    plugin::Whisper("I am the leading authority on restoring and deciphering hidden messages. I can probably make out the message if you can bring me back some [items] I commonly use.");
  }
  if ($text=~/what items/i) {
    plugin::Whisper("I will need your message, a frost crystal, a sarnak war braid, and some silver oxide. Bring these items back to me and be quick about it.");
    quest::summonitem(48006);
    quest::summonitem(48014);  
  }
  }
  
sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 48006 =>1 )) {
    plugin::Whisper("Ah, I see you know my true [calling].");
  }
  if (plugin::check_handin(\%itemcount, 48012 =>1 )) {
    plugin::Whisper("Let me see now.");
    quest::emote("Trooper Drix uses the mixture you brought him and spreads it evenly across your document. It settles into all the wrinkles and with the speed of a Master, Trooper Drix uses the sarnak braid to seal the pieces as one.");
    quest::summonitem(48008);
    plugin::Whisper("Take this sealed note back to whoever you need to. I dare not say what it reads out loud.");
  }
  plugin::return_items(\%itemcount);
}