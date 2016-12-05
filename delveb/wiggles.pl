sub EVENT_AGGRO {

  my $guard1 = $entity_list->GetMobByNpcTypeID(1204); #mawmaw
  my $guard2 = $entity_list->GetMobByNpcTypeID(1205); #rolf
  quest::shout("Bark");
  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    $call_guard1->AddToHateList($client, 1);
  }
  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    $call_guard2->AddToHateList($client, 1);
  }
}