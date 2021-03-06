# Test of Illusion - enchanter epic quest - staff of the serpent
# 


sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("The hidden self inside a myriad of magic is one that walks quite softly. Yes, that is what you must seek.");
  }
  if ($text=~/ready/i) {
    plugin::Whisper("Scattered throughout the world are various items. To prove your worth, go collect these and return them to me. The Xolion Rod, Innoruuk's Word, Chalice of Kings, and snow blossoms.");
  }
  if ($text=~/chalice of kings/i) {
    plugin::Whisper("The Chalice of Kings is the chalice of elven kings. Previously thought to be lost to the ages, it was recently discovered. I need its magical powers to create a magical liquid.");
  }
  if ($text=~/xolion rod/i) {
    plugin::Whisper("This is the rod of an ancient civilization found on this continent. Nothing is known of it other than that the scaled ones discovered it years ago.");
  }
  if ($text=~/snow blossoms/i) {
    plugin::Whisper("These are flowers that are also used in the creation process. They were once widespread, but now I am told they only grow in select places.");
  }
  if ($text=~/innoruuks word/i) {
    plugin::Whisper("The strict doctrine of the priests of Innoruuk is used as a material component in the crafting. The power of their hate must not be underestimated.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 10604 => 1)) {
    plugin::Whisper("Ah yes, Jeb's seal. The time to craft a Serpent must have come. I will need components collected to craft the first of the pieces. I will also provide you with a sack in which you must combine the items. Are you ready to collect them?");
    quest::summonitem(10604);
    quest::summonitem(17861);
  }
  elsif (plugin::check_handin(\%itemcount, 10635 => 1)) {
    plugin::Whisper("Excellent, you have done well. Here is the first piece of the staff. Now you must go seek out the second master; he will clear the path for you.");
    quest::faction(342,30);
    quest::exp(100000);
    quest::summonitem(10610);
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

# EOF Zone: overthere ID: 93150 NPC: Modani_Qu'Loni

