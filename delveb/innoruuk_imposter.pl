#Innoruuk Imposter Fight

sub EVENT_SPAWN {

quest::stoptimer("rat_adds");

}

sub EVENT_TIMER {
 my $x = $npc->GetX();
 my $y = $npc->GetY();
 my $z = $npc->GetZ();
 my $h = $npc->GetHeading();
 
  if ($timer eq "rat_adds") {
    quest::stoptimer("rat_adds");
	
	quest::spawn(1175,0,0,$x+15,$y+5,$z);

    plugin::Whisper("Kill the intruders!!!");
    quest::settimer("rat_adds",29); }
    
}

sub EVENT_COMBAT {
  if ($combat_state == 0) {
    quest::depopall(1175);
    quest::stoptimer("rat_adds"); 
	}
  
  if ($combat_state == 1) {
  #quest::stoptimer("rat_adds");
  quest::shout("My Slaves, Come to my aid!");
  quest::settimer("rat_adds",29); }
  
}

sub EVENT_DEATH_COMPLETE {

$timestamp = localtime(time);

  quest::stoptimer("rat_adds");
  quest::shout("I have fallen! Prepare yourself, my brothers!");
  #quest::write("bossdeaths.txt","[$timestamp]:Nightwhisker was killed by $name the $class.");

}