# Part of the quest for Vambraces of the Fervent

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Not so loud! My head is spinning so! What I wouldn't give for a Tumpy's Tonic right now! They were always just the thing for the hair of the gnoll that bit me.");
  }
}

sub EVENT_ITEM {
  if ($itemcount{12114} == 1) {
    plugin::Whisper("<SLURP!!>  Ahh thhhhat'thh betterr. Take thithhh. <BURP!>");
    quest::summonitem(19006);
    quest::depop();
  }
}

# Quest by mystic414