# link lord vyemm and guards
#

sub EVENT_AGGRO {
  my $guard1 = $entity_list->GetMobByNpcTypeID(124014); #hsrek
  my $guard2 = $entity_list->GetMobByNpcTypeID(124013); #lurian
  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    $call_guard1->AddToHateList($client, 1);
  }
  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    $call_guard2->AddToHateList($client, 1);
  }
}
sub EVENT_DEATH_COMPLETE {
plugin::Whisper("Signaling Vulak");
    quest::signalwith(124156,1,0);

}


# EOF zone: templeveeshan ID: 124017 NPC: #Lord_Vyemm

