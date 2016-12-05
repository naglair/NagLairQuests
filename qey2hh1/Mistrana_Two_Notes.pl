sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hail, $name - Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
  }
  if ($text=~/mail/i) {
    plugin::Whisper("The League of Antonican Bards has a courier system made up of travelers and adventurers.  We pay good gold to anyone who will take messages from bards such as myself to one of our more central offices.  Are you [interested]?");
  }
  if ($text=~/interested/i) {
    plugin::Whisper("I have messages that need to go to - well, right now I have one that needs to go to Qeynos.  Will you [deliver] mail to [Qeynos] for me?");
  }
  if ($text=~/deliver to qeynos/i) {
    plugin::Whisper("Take this letter to Tralyn Marsinger in Qeynos.  You can find him at the bard guild hall.  I am sure he will compensate you for your troubles.");
    quest::summonitem(18150);
  }
}
