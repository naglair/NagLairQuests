#BeginFile: neriaka\Javen_TaVos.pl
#Quest for Neriak Foreign Quarter - Javen TaVos: LoY Cultural Robes

sub EVENT_SAY {
  my $TrueRace = $client->GetBaseRace();

  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name. Feel free to browse my wares. Unless you are looking to make a special Dark robe. If so, just let me know that you want a [robe pattern]."); #Still need real text
  }
  if($text=~/robe pattern/i) {
    if ($TrueRace == 6) { #Dark Elf
      plugin::Whisper("Very well. Take this pattern, and good luck to you Dark Elf."); #Still need real text
      quest::summonitem(65146); #Dark Robe Pattern
    }
    else {
      plugin::Whisper("You are not a Dark Elf! Who are you trying to fool?"); #Still need real text
    }
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:neriaka  ID:40072 -- Javen_TaVos