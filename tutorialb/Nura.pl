#zone: tutorialb
#Revised Angelox

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("As long as blood still flows in my veins, no kobolds shall cross this bridge.");
  }
}