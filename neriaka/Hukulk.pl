
sub EVENT_SAY {
 if($text =~ /Hail/i) {
	plugin::Whisper('Hello. I am the guild master.');
 }
}

sub EVENT_ITEM {
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
  plugin::return_items(\%itemcount);
}