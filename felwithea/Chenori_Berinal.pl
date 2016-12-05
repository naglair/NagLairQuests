#BeginFile: felwithea\Chenori_Berinal.pl
#Quest for Northern Felwithe - Chenori Berinal: LoY Cultural Robes

sub EVENT_SAY {
  my $TrueRace = $client->GetBaseRace();

  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name. Feel free to browse my wares. Unless you are looking to make a special Feir`Dal robe. If so, just let me know that you want a [robe pattern]."); #Still need real text
  }
  if($text=~/robe pattern/i) {
    if ($TrueRace==5) { #High Elf
      plugin::Whisper("Very well. Take this pattern, and good luck to you High Elf."); #Still need real text
      quest::summonitem(65212); #Feir`Dal Robe Pattern
    }
    else {
      plugin::Whisper("You are not a High Elf! Who are you trying to fool?"); #Still need real text
    }
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:felwithea  ID:61068 -- Chenori_Berinal