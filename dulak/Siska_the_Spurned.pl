sub EVENT_ATTACK {
  plugin::Whisper("Grr... The piece is mine, snake! You'll not have it.");
  quest::depop();
}