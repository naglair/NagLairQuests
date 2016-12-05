#Spawns the true form after all rebazza's have been kileld
my $check = 0;
my $counter = 0 ; 

sub EVENT_SPAWN { 
    $counter = 0;
  my $counter = 0 ;
}



sub EVENT_SIGNAL{
 if($signal == 1 ) {
  $counter+=1;
  #DEGUGGINGG
  #quest::shout("Counter is now $counter");
  }
   if($signal == 2 ) {
    $counter = 0;
  my $counter = 0 ;
  #DEGUGGINGG
  #quest::shout("Counter is now $counter");
  }
 if ($counter >= 8) {
  quest::spawn2(1225,0,0,-171,2059,-11,90);
   #DEGUGGINGG
  #quest::shout("Counter is now $counter");
  $counter = 0;
  my $counter = 0 ;
    #DEGUGGINGG
  #quest::shout("Counter is now $counter");
 }
 
}


