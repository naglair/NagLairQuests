# NPC: ORC_WARRIOR

sub EVENT_AGGRO {
  my $random_result = int(rand(100));
  if($random_result <= 25) {
    plugin::Whisper("Orc stomp, orc kill - orc weapons, your blood will spill.");
  }
  elsif($random_result <= 50) {
    plugin::Whisper("Filthy $race\'s like you must die!");
  }
  elsif($random_result <= 75) {
    plugin::Whisper("$race\'s have no place in our realm!");
  }
  else {
    plugin::Whisper("It's $race\'s like you who have ruined your own lands. You'll not ruin mine!");
  }
}
# OASIS