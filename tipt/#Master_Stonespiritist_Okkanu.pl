sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("You have done well!  The way forward is now clear.");
    quest::setglobal("god_kodtaz_access", 1, 5, "F");
	$client->Message(4,"You receive a character flag!");
  }
}