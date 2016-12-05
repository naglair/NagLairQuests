#Zone: Skyshrine
#Short Name: skyshrine
#Zone ID: 114
#
#NPC Name: Crendatha Fe`Dhar
#NPC ID: 114265

sub EVENT_SAY {
  if ($faction == 1) { #req ally CoV
    if($text=~/hail/i) {
      plugin::Whisper("What do we have here? A cutthroat, perhaps? If you are a rogue, I may have use for you. I am in need of certain components and will reward you well if they are brought to me. Do I have your services?");
    }
    if ($text=~/you have my services/i) {
      plugin::Whisper("Excellent. Now, down to business. I shall pay you in trade for the items I seek. What I have for you is as such, a coif, a breastplate, armplates, bracers, gauntlets, greaves and boots. These should aid you in your skullduggery.");
    }
    if ($text=~/coif/i) {
      plugin::Whisper("I am in need of an unadorned chain coif and three crushed pieces of coral. For your services I shall give you a coif suitable for one such as you.");
    }
    if ($text=~/breastplate/i) {
      plugin::Whisper("For the breastplate you must seek out an unadorned chain tunic and three flawless diamonds. Only then will you receive a breastplate of my crafting.");
    }
    if ($text=~/armplate/i) {
      plugin::Whisper("For the armplates I shall give you, I require these: unadorned chain sleeves and three flawed emeralds.");
    }
    if ($text=~/bracer/i) {
      plugin::Whisper("An unadorned bracer and three crushed flame emeralds are what I require of you. A bracer of my making is your reward.");
    }
    if ($text=~/gauntlet/i) {
      plugin::Whisper("I need unadorned chain gauntlets and a set of three crushed topaz. Once I have these, you shall have your reward.");
    }
    if ($text=~/greaves/i) {
      plugin::Whisper("A pair of leggings will be yours once you complete this task for me, thief. A pair of unadorned chain leggings and three flawed sea sapphires are all I require.");
    }
    if ($text=~/boots/i) {
      plugin::Whisper("A fine pair of boots shall you have to skulk around in, once you bring me a pair of unadorned chain boots and three pieces of crushed black marble.");
    }
  }
  else {
    plugin::Whisper("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
  }
}

sub EVENT_ITEM {
  if ($faction == 1) { #req ally CoV 
    if (plugin::check_handin(\%itemcount, 25831 => 3, 24968 => 1)) { #cap
      quest::summonitem(31126);
    }
    elsif (plugin::check_handin(\%itemcount, 25814 => 3, 24963 => 1)) { #bp
      quest::summonitem(31127);
    }
    elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24965 => 1)) { #arm
      quest::summonitem(31128);
    }
    elsif (plugin::check_handin(\%itemcount, 25838 => 3,24967  => 1)) { #bracer
      quest::summonitem(31129);
    }
    elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24969 => 1)) { #glove
      quest::summonitem(31130);
    }
    elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24964 => 1)) { #leg
      quest::summonitem(31131);
    }
    elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24966 => 1)) { #boots
      quest::summonitem(31132);
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

#END of FILE Zone: skyshrine ID:114265 -- Crendatha_Fe`Dhar