sub EVENT_SIGNAL {
  if ($signal == 1) {
    plugin::Whisper("Eh, what do you mean by peculiar?");
  }
  if ($signal == 2) {
    plugin::Whisper("Whoa! What did you do?");
  }
}