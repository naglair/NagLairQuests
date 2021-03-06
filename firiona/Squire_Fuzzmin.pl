#zone: Firiona  NPC: Squire_Fuzzmin (84312)
#by Qadar

sub EVENT_SPAWN {
  quest::follow($hobble);
}

sub EVENT_SAY { 
  if($text=~/Hail/i){
    quest::emote("awakens from a quick shuteye.");
    plugin::Whisper("Yawn..  Oh!!  Hello.  Don't mind the rusty old tin can.  Sir Hobble is on a [quest] of sorts.  I tell you, I would leave if he did not pay good wages to carry his equipment.");
  }
  if($text=~/quest/i){
    plugin::Whisper("Sir Hobble is searching for [three special dragons].  For all I know they are not even dragons.  He can't see or hear very well.  He still thinks I am the only troll squire around.");
  }
  if($text=~/three special dragons/i){
    plugin::Whisper("Apparently he is after three dragons which are supposedly named Azdalin, Gylton, and Xyfl.  He will not rest until he holds their scales.  I wish you could [find the dragons].");
  }
  if($text=~/find the dragons/i){
    plugin::Whisper("If you bring me the three scales I will be able to place them upon the next three victims of Sir Hobble.  Then we can part from this accursed isle.  He would never know the difference.  Do this and I will give you a warrior weapon out of the old knight's armory.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 12950 => 1, 12951 => 1, 12952 => 1)){
    quest::doanim(20);
    quest::emote("tumbles around and stands on his hands.  With his feet he pulls a long polearm from a nearby weapons cache!!  'Woohoo!!  I can taste the brew in Freeport already.  Here you are my friend.  A real Wurmslayer!!' ");
    quest::faction(101,15);   # Firiona Vie better
    quest::faction(92,15);    # Emerald Warriors better
    quest::faction(314,15);   # Storm Guard better
    quest::faction(193,-15);  # Legion of Cabilis worse
    quest::faction(250,-15);  # Pirates of Gunthak worse
    quest::exp(700000);
    quest::ding;
    quest::summonitem(5057);
  }
  else {
    plugin::Whisper("Thank you very much, however, this will not help me.  Please return when you have all I have asked for. ");
    plugin::return_items(\%itemcount);
  }

}
 

# Turn-ins:
# 12950 = dragon scale (Azdalin)
# 12951 = dragon scale (Gylton)
# 12952 = dragon scale (Xyfl)
# Quest reward = Wurmslayer (5057)
# Quest depends on Sir_Hobble.pl in Firiona for proper spawn of Squire_Fuzzmin
