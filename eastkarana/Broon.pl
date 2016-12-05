sub EVENT_AGGRO {
plugin::Whisper("Broon will crush you like little pumpkin. Bwahaha!!");
}

sub EVENT_DEATH_COMPLETE {
plugin::Whisper("ARGH!! You will pay, tiny thing!! My big brother Droon will make you dead! And if pap Proon gets you.. argh.. you will stain on his feets.. argh.");
quest::spawn2(15138,128,0,885,1132,-69.87,0);
}
