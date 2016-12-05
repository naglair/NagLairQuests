sub EVENT_SAY {
  if ($text=~/hail/i) {
quest::emote("looks up from her teary handkerchief, the deepest sadness visible in her eyes");
    plugin::Whisper("I am very sorry, but I am not very good company at the moment. I fear my love will never return.");
  }
  if ($text=~/what love/i) {
 #not live text
    plugin::Whisper("Oh my love is gone away.  Our story is so difficult to tell.");
  }
  if ($text=~/what story/i) {
  #not live text
    plugin::Whisper("Here.  Take this and read it, I can't bear to relate it again");
    quest::summonitem(18324);
  }
}

