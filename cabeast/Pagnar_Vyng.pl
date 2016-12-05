#BeginFile: cabeast\Pagnar_Vyng.pl
#Quest for East Cabilis - Pagnar Vyng: LoY Cultural Robes

sub EVENT_SAY {
  my $TrueRace = $client->GetBaseRace();

  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name. Feel free to browse my wares. Unless you are looking to make a special Cabilisan robe. If so, just let me know that you want a [robe pattern]."); #Still need real text
  }
  if($text=~/robe pattern/i) {
    if ($TrueRace==128) { #Iksar
      plugin::Whisper("Very well. Take this pattern, and good luck to you Iksar."); #Still need real text
      quest::summonitem(65256); #Cabilisan Robe Pattern
    }
    else {
      plugin::Whisper("You are not an Iksar! Who are you trying to fool?"); #Still need real text
    }
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:cabeast  ID:106118 -- Pagnar_Vyng