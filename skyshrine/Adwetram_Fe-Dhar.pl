#Zone: Skyshrine
#Short Name: skyshrine
#Zone ID: 114
#
#NPC Name: Adwetram Fe`Dhar
#NPC ID: 114267

sub EVENT_SAY {
  if ($faction == 1) { #req ally CoV
    if($text=~/hail/i) {
      plugin::Whisper("I wish to speak only to the knights called paladins. If you are what I seek do you wish to partake of my quests?");
    }
    if ($text=~/i wish to partake of your quests/i) {
      plugin::Whisper("Excellent. By serving my cause, you, in turn, will further your own. I require certain components to aid me and if you bring them to me, I shall reward you for your honorable service. You may choose from among these items: a helm, a breastplate, armplates, bracers, gauntlets, greaves, and boots.");
    }
    if ($text=~/helm/i) {
      plugin::Whisper("All I require are an unadorned plate helmet and three pieces of crushed coral. This should be a small task for one such as you. Go now and I shall await your return.");
    }
    if ($text=~/breastplate/i) {
      plugin::Whisper("As the resolve of your faith protects you, so shall this breastplate. All that is required are three flawless diamonds and an unadorned breastplate. Do this quickly so that you may return to the field of battle.");
    }
    if ($text=~/armplate/i) {
      plugin::Whisper("So, a pair of armplates is what you require? Well, I require unadorned plate vambraces and three flawed emeralds before you may receive it.");
    }
    if ($text=~/bracer/i) {
      plugin::Whisper("Bracers for the mighty? Retrieve these components and I shall forge the item for you. Bring me three crushed flame emeralds and an unadorned plate bracer.");
    }
    if ($text=~/gauntlet/i) {
      plugin::Whisper("Mighty gauntlets to smite your foes for the glory of the greater good! It is no easy task but I shall require a pair of unadorned plate gauntlets as well as three crushed topaz.");
    }
    if ($text=~/greaves/i) {
      plugin::Whisper("Sturdy are the pillars that support the temple. I shall make you just as strong with these leggings. Gather unadorned plate greaves and three flawed sea sapphires.");
    }
    if ($text=~/boots/i) {
      plugin::Whisper("A pair of boots you shall have once you have brought me a pair of unadorned plate boots, and three pieces of crushed black marble.");
    }
  }
  else {
    plugin::Whisper("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
  }
}

sub EVENT_ITEM {
  if ($faction == 1) { #req ally CoV 
    if (plugin::check_handin(\%itemcount, 25831 => 3, 24961 => 1)) { #cap
      quest::summonitem(31119);
    }
    elsif (plugin::check_handin(\%itemcount, 25814 => 3, 24956 => 1)) { #bp
      quest::summonitem(31120);
    }
    elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24958 => 1)) { #arm
      quest::summonitem(31121);
    }
    elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24960 => 1)) { #bracer
      quest::summonitem(31122);
    }
    elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24962 => 1)) { #glove
      quest::summonitem(31123);
    }
    elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24957 => 1)) { #leg
      quest::summonitem(31124);
    }
    elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24959 => 1)) { #boots
      quest::summonitem(31125);
    }
    else {
      plugin::Whisper("I can do nothing with these items, $name.");
      plugin::return_items(\%itemcount);
      return 1;
    }
    quest::emote("smiles warmly as he hands you your reward.");
    plugin::Whisper("Well done, $name.");
    quest::exp(175000);
    quest::faction(42,30); # CoV
    quest::faction(362,30); # Yelinak
    quest::faction(189,-60); # Kromzek
  }
  else {
    plugin::Whisper("I do not know you well enough to entrust such an item to you, yet.");
    plugin::return_items(\%itemcount);
  }
}

#END of FILE Zone: skyshrine ID:114267 -- Adwetram_Fe`Dhar