sub EVENT_SPAWN {
  quest::set_proximity($x - 20000, $x + 20000, $y - 20000, $y + 20000,$z - 1000, $z + 1000);
}

sub EVENT_ENTER 
{
 
    quest::movepc(309,1,1,1,0); #SoF+
  }

