sub EVENT_SPAWN {
  $x = $npc->GetX();
  $y = $npc->GetY();
  $z = $npc->GetZ();
   quest::enable_proximity_say();
  quest::set_proximity($x-50,$x+50,$y-50,$y+50);
 
  quest::shout("Im hiding over here!");
}

sub EVENT_PROXIMITY_SAY {
  if (($zonehour > 19 || $zonehour < 8) && ($text=~/be my guide/i) && defined($qglobals{"EinoTrigger"}) && ($qglobals{"EinoTrigger"} == 1)) {
    quest::unique_spawn(204071,0,0,1685,-515,215,155);
    quest::depop_withtimer();
  }
  else{
  quest::say("Nope!");
  }
}