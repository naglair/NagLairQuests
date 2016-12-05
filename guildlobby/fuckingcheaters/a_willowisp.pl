#Illusion NPC and random nearby location mover

sub EVENT_SPAWN {

  my $x = $npc->GetX();
  my $y = $npc->GetY();

  quest::set_proximity($x - 10, $x + 10, $y - 10, $y + 10);
  
}

sub EVENT_SAY {

  if ($text =~/hail/i) {
    plugin::Whisper ("Would you like a [change]? or a [return] ?"); }

  if ($text =~/return/i) {
    plugin::Whisper ("There, you are now back to your natural appearance.");
    quest::playerrace(0); } 


  if ($text =~/change/i) {
    plugin::Whisper ("Sure!");
quest::playerrace(quest::ChooseRandom(14,27,42,43,46,58,60,62,63,66,75,82,85,89,95,108,120,123,150,151,153,161,209,210,211,212,356,367,433,436,454,455,456,458,464,469,470,472,473));
  	quest::playertexture(quest::ChooseRandom(1,2,3,4,5));

}



