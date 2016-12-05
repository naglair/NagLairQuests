#BeginFile: erudnext\Valani_Gadriek.pl
#Quest for Erudin - Valani Gadriek: LoY Cultural Robes

sub EVENT_SAY {
  my $TrueRace = $client->GetBaseRace();

  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name. Feel free to browse my wares. Unless you are looking to make a special Erudian robe. If so, just let me know that you want a [robe pattern]."); #Still need real text
  }
  if($text=~/robe pattern/i) {
    if ($TrueRace==3) { #Erudite
      plugin::Whisper("Very well. Take this pattern, and good luck to you Erudite."); #Still need real text
      quest::summonitem(65168); #Erudian Robe Pattern
    }
    else {
      plugin::Whisper("You are not an Erudite! Who are you trying to fool?"); #Still need real text
    }
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:erudnext  ID:24096 -- Valani_Gadriek