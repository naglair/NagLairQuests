

sub EVENT_SPAWN {
  quest::shout("What have you done!!!? You will never defeat me!");
}


sub EVENT_DEATH_COMPLETE {
 quest::signalwith(1226,2,0);
   quest::shout("Ahhh My Spirit is free...."); 
   quest::spawn2(1230,0,0,$x,$y,$z,$h); # spiritual presense
}

# EOF zone: airplane ID: 71018 NPC: an_essence_harvester

