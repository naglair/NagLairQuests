#an_ancient_regrua_sentinel
sub EVENT_AGGRO {
    plugin::Whisper("We are the protectors and guardians of this domain, death is all you will find here.");
}

sub EVENT_DEATH_COMPLETE {
    plugin::Whisper("Even now Coirnav awaits to deal swift death to you. Flee, weaklings.");
}