sub EVENT_AGGRO {
 plugin::Whisper("We shall take rivervale!");
}
sub EVENT_DEATH_COMPLETE {
 plugin::Whisper("Argg! More shall come to kill your city!!");
}

sub EVENT_SPAWN {
quest::moveto(-39,-104,4,1) 



}

