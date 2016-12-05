sub EVENT_SPAWN {
   my $random = int(rand(720));
   quest::settimer("mangler",$random);
}

sub EVENT_TIMER {
  plugin::Whisper("<Bark, bark, bark! Hoooooowwwwwwl!>");
  quest::signal(19049,1); #Kevlin_Diggs
}