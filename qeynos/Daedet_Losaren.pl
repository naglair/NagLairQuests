sub EVENT_ITEM {
  if ($gold == 20) {
    plugin::Whisper("This should help you remain safe.");
    quest::castspell(11);
  }
}