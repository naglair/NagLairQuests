sub EVENT_SPAWN {
  plugin::Whisper("So, there you are, little Gnome. Thought you evaded us? Your friends will never protect you. You will all fall before our power!");
}

sub EVENT_DEATH_COMPLETE {
  quest::signal(48040,0);
}