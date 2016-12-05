############
#Quest Name: electrum-bladed wakizashi
#Author: Inspiration
#Zone: Mistmoore
#NPC Name: an avenging caitiff
#NPC ID: 59020
#Quest items needed: Maid Issis fang (10179) and Butler Syncall fang (10178)
###########


sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("an avenging caitiff glares at you with fangs bared as he draws an electrum-bladed wakizashi.");
  }
  if ($text=~/electrum-bladed wakizashi/i) {
    plugin::Whisper("HA! As if a mortal such as yourself is worthy of such a weapon. Leave me to my mission - my purpose in life - the slaying of those who brought me into this existence, then exiled me from this place.");
  }
  if ($text=~/mother/i) {
    plugin::Whisper("My mother was named Issis. She is, to my knowledge, employed as Lord Mistmoores maid.");
  }
  if ($text=~/father/i) {
    plugin::Whisper("Syncall is my fathers name. He serves as Lord Mistmoores butler.");
    }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 10179 => 1, 10178 => 1)) {
   quest::summonitem(5408);
  }
  else {
    plugin::Whisper("I have no need of these items, $name.");
    plugin::return_items(\%itemcount);
    return 1;
  }

plugin::Whisper("Mother? Father? May you find peace at last. I shall avenge your suffering! I will grow stronger and set free the souls of the others.");
quest::exp(5000);
}



#End of file 