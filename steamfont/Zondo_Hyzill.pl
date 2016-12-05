sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Glad to meet you. Our Cargo Clockwork is marvelous, no?");
  }
}