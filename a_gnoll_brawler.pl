#Illusion NPC and random nearby location mover

sub EVENT_SPAWN {

  my $x = $npc->GetX();
  my $y = $npc->GetY();

  quest::set_proximity($x - 10, $x + 10, $y - 10, $y + 10);
  
}

sub EVENT_SAY {

  if ($text =~/hail/i) {
    plugin::Whisper ("Would you like me to [return] you to your natural form?  Or would you like me to [stop] changing your illusion when you enter the Lobby?"); }

  if ($text =~/return/i) {
    plugin::Whisper ("There, you are now back to your natural appearance.");
    quest::playerrace(0); } 

  if ($text =~/stop/i) {
    plugin::Whisper ("Ok, I won't change it from now on.  Unless you change your mind and wish for me to [start] changing it again next time.");
    quest::setglobal("illusion", 1, 1, "F"); } 

  if ($text =~/start/i) {
    plugin::Whisper ("Sure, I will be happy to start changing your illusion again next time!");
    quest::setglobal("illusion", 1, 1, "M10"); } 

}

sub EVENT_ENTER {



  if (defined($qglobals{illusion})) {
  }
  else {
  	quest::playerrace(quest::ChooseRandom(14,27,42,43,46,58,60,62,63,66,75,82,85,89,95,108,120,123,150,151,153,161,209,210,211,212,356,367,433,436,454,455,456,458,464,469,470,472,473));
  	quest::playertexture(quest::ChooseRandom(1,2,3,4,5));
  	quest::movepc(152, quest::ChooseRandom(-30,-25,-20,-15,-10,-5,0,5,10,15,20,25,30,35),quest::ChooseRandom(-30,-25,-20,-15,-10,-5,0,5,10,15,20,25,30,35),-30);
    quest::setglobal("illusion", 1, 1, "M10");
  }

}

