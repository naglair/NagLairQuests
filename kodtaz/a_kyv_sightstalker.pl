sub EVENT_AGGRO {
plugin::Whisper("You're going to find an arrow in your back before I'm through!");  
}
sub EVENT_DEATH_COMPLETE {
  quest::emote("meets the ground with a brutal thud.");
}