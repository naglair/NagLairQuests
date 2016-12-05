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

sub EVENT_SPAWN {
  
}

sub EVENT_AGGRO {
  quest::shout("<HOWWWWWWWWWWWWWLLLL>");
}

sub EVENT_DEATH_COMPLETE {
quest::signalwith(1226,1,0);
}

# EOF zone: airplane ID: 71018 NPC: an_essence_harvester

