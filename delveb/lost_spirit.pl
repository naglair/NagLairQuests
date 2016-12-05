
sub EVENT_SAY {
my $looost = quest::saylink ("looost",1);
my $equipment = quest::saylink ("equipment", 1);
my $token = quest::saylink ("token", 1);
my $betrayed = quest::saylink ("betrayed", 1);
###########################
#  Ring 1 Quest           #
###########################


    if ($text=~/Hail/i) {
    plugin::Whisper("Hrmff, what's this? A warm body? It's been sooo loooong since I was [$looost] here, [$betrayed] by kin.");
  }
  if ($text=~/looost/i) {
    plugin::Whisper("Many years ago I set out with powerful friends to face the evils here and cleanse this dungeon of the vile miasma that grows here. We thought we were powerful enough to seek the treasure hidden here. We were wrong. We lost our lives and our [$equipment].");
  }
  if ($text=~/equipment/i) {
    plugin::Whisper("I cannot wear my equipment any longer. If you find it you may keep it. If you ever reach the end and slay my killer, bring back a [$token] of the deed and I shall reward you.");
  }
  
   if ($text=~/betrayed/i) {
    plugin::Whisper("I was betrayed by one I thought a friend. Fenwraith, he was called. The evil took him and now he dwells in the depest parts of this cave. Seek him out and deliver to me a [$token] of the deed so that I might rest in peace.");
  }
  if ($text=~/token/i) {
    plugin::Whisper("I want a token from the monster that slew me. Seek Fenwraith the betrayer. Slay him. Let me rest in peace." );
  }
}

sub EVENT_ITEM {

#malachite
if(plugin::check_handin(\%itemcount,1389 => 1))
{
plugin::Whisper("Release....Cannot come yet. Much left to do, but take this! ");
my $a = quest::ChooseRandom(31851,31852,31853,31854,31855,31856,31857,31858,31859,31860,31861,31862,31863);
quest::summonitem($a); 
quest::setglobal("credit",1,5,"F");
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("My incorporeal form does not understand...");
}


}