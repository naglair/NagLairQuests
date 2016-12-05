#wood elf ranger dude 
#npc - Elmion Hendrys
#zone - Dagnors Cauldron
#by Angelox

# Elmion Hendrys says 'How are you?  Please rest.  Have you [been wounded by the beasts] of this region?'
sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("How are you?  Please rest.  Have you [been wounded by the beasts] of this region.");
}
if($text=~/wounded/i){
$npc->CastSpell(200,$userid);
 }
}

sub EVENT_SIGNAL {
plugin::Whisper("Pipe down, Ghil!!  We have no quarrel with this adventurer.");
}