# on death of essence harvester two essence carriers spawn
#

my $x;
my $y;
my $z;
my $h;
my $entid1;
my $entid2;
my $mob1;
my $mob2;
my $mobnpc1;
my $mobnpc2;


sub EVENT_AGGRO {
  
}

sub EVENT_DEATH_COMPLETE {
quest::shout("Elder gods of death, bring me back to life.");
  $x = $npc->GetX();
  $y = $npc->GetY();
  $z = $npc->GetZ();
  $h = $npc->GetHeading();
  $entid1 = quest::spawn2(1229,0,0,$x,$y,$z,$h);
quest::spawn2(1229,0,0,$x,$y,$z,$h);
  $mob1 = $entity_list->GetMobID($entid1);

  $mobnpc1 = $mob1->CastToNPC();

  $mobnpc1->AddToHateList($npc->GetHateTop());

}

# EOF zone: airplane ID: 71018 NPC: an_essence_harvester

