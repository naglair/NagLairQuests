# Part of quest for Veeshan's Peak key

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("I Niblek. You want something from Niblek?  Niblek find treasures in walls. Niblek like to trade treasures.");
  }
  if ($text=~/treasures/i) {
    plugin::Whisper("Niblek find piece of old jewelry! It very old, probably has much power!");
  }
  if ($text=~/want/i) {
    plugin::Whisper("Niblek likes shiny tings very much! You bring Niblek two shiny tings! Niblek has seen black sapphire and ruby! Niblek likes them very much!");
  }
}

sub EVENT_ITEM {
  if (($itemcount{10036} == 1) && ($itemcount{10035} == 1)) {
    plugin::Whisper("I much happy now!! I want shiny tings for long time! I give you ugly broken necklace now!");
    quest::summonitem(19964);
    quest::exp(1000);
  }
}

# Quest by mystic414