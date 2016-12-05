sub EVENT_SAY {
  if($text=~/hail/i && $faction <= 5) {
    plugin::Whisper("Uggg. You needz [keyz]? Rrrrrrr.");
  }
  if($text=~/key/i && $faction <= 5) {
    plugin::Whisper("Uggggg. Take dis keyz.");
    quest::summonitem(6378);
  }
}

#END of FILE Zone:paineel  ID:75042 -- Guard_Lecknar