#Fenwraith_the_Betrayer


sub EVENT_DEATH_COMPLETE { 
   quest::shout("Ahhh My Spirit is free...."); 
   quest::spawn2(1230,0,0,$x,$y,$z,$h); # spiritual presense
   }