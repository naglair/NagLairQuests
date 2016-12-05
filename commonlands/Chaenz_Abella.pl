sub EVENT_SAY {
  if($text=~/hail/i) {
    if(defined($qglobals{Wayfarer}) && ($qglobals{Wayfarer} == 4)) { #Player has received Wayfarers Brotherhood Emblem
      if(!plugin::check_hasitem($client, 40999)) { #Wayfarers Brotherhood Emblem
        plugin::Whisper("Here is a token of my appreciation. Should you lose your Wayfarers Brotherhood Emblem or misplace it, I or Barstre, Selephra, Ruanya, Teria, or Vual will replace it.");
        quest::summonitem(40999); #Wayfarers Brotherhood Emblem
      }
      else {
        plugin::Whisper("Hello fellow Wayfarer!"); #Text made up
      }
    }
    else {
      plugin::Whisper("You'll have to excuse me, I am very busy.");
    }
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 41000 => 1)) { #Adventurer's Stone
    if(defined($qglobals{Wayfarer}) && ($qglobals{Wayfarer} == 3)) { #Player has maxed out Adventurer's stone and is ready to speak with Chaenz
      quest::setglobal("Wayfarer",4,5,"F");
      plugin::Whisper("I heard you had become knowledgeable about all aspects of the dungeons we've found. I must confess that I never had you pegged for such a great adventurer! I suppose I should welcome you -- as a member of the Wayfarers Brotherhood. The honor is well deserved. Congratulations!");
      plugin::Whisper("Here is a token of my appreciation. Should you lose your Wayfarers Brotherhood Emblem or misplace it, I or Barstre, Selephra, Ruanya, Teria, or Vual will replace it.");
      quest::summonitem(40999); #Wayfarers Brotherhood Emblem
    }
    else {
      plugin::Whisper("You are not yet ready to become a full member of the Wayfarers Brotherhood. Seek out more adventures!"); #Text made up
      quest::summonitem(41000); #Adventurer's Stone
    }
  }
  plugin::return_items(\%itemcount);
}