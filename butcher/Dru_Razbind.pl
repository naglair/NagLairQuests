sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Welcome to my fishing spot. I need to fish for food now that I have been [banished] from Kaladim.");
  }
  if ($text=~/banished/i) {
    plugin::Whisper("It is a sad story, actually. I was chosen for a very important task by Datur Nightseer, the leader of the Paladin Guild in Kaladim. It seemed like a simple task. Datur Nightseer sent me to carry the Chalice of Conquest to a noble band of Paladins in the Mountains of Rathe. Alas, I was ambushed by a group of orcs and lost the chalice. Since I failed in my task, I was stripped of my Cape of Underfoot by Lord Nightseer and banished from Kaladim. I wish there was a way that I could [redeem] myself.");
  }
  if ($text=~/redeem/i) {
    plugin::Whisper("If only I could find the chalice and continue my task... ");
  }
  if ($text=~//i) {
    plugin::Whisper("");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 00000 => 1)) { #
    plugin::Whisper("");
  }
  elsif (plugin::check_handin(\%itemcount, 00000 => 1)) { #
    plugin::Whisper("");
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}