#BeginFile: akanon\Tesil_Gludien.pl
#Quest for Akanon - Tesil Gludien: LoY Cultural Robes

sub EVENT_SAY {
  my $TrueRace = $client->GetBaseRace();

  if($text=~/hail/i) {
    plugin::Whisper("Hello, $name. Feel free to browse my wares. Unless you are looking to make a special Oxidized robe. If so, just let me know that you want a [robe pattern]."); #Still need real text
  }
  if($text=~/robe pattern/i) {
    if ($TrueRace==12) { #Gnome
      plugin::Whisper("Very well. Take this pattern, and good luck to you Gnome."); #Still need real text
      quest::summonitem(65192); #Oxidized Robe Pattern
    }
    else {
      plugin::Whisper("You are not a Gnome! Who are you trying to fool?"); #Still need real text
    }
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I have no use for this, $name.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:akanon  ID:55154 -- Tesil_Gludien