#depops and pops real Tunare outside tree when attacked.

sub EVENT_ATTACK {
  my $tsprite_mob = $entity_list->GetMobByNpcTypeID(127000);
  my $minitunare_mob = $entity_list->GetMobByNpcTypeID(127001);
  my $pog_mob = $entity_list->GetMobByNpcTypeID(127002);
  my $pogb_mob = $entity_list->GetMobByNpcTypeID(127003);
  my $tfocuser_mob = $entity_list->GetMobByNpcTypeID(127005);
  my $guardian_mob = $entity_list->GetMobByNpcTypeID(127007);
  my $sfwolf_mob = $entity_list->GetMobByNpcTypeID(127008);
  my $rtreant_mob = $entity_list->GetMobByNpcTypeID(127013);
  my $mctreant_mob = $entity_list->GetMobByNpcTypeID(127014);
  my $undogo_mob = $entity_list->GetMobByNpcTypeID(127015);
  my $keeper_mob = $entity_list->GetMobByNpcTypeID(127016);
  my $sarik_mob = $entity_list->GetMobByNpcTypeID(127017);
  my $fayl_mob = $entity_list->GetMobByNpcTypeID(127018);
  my $rroot_mob = $entity_list->GetMobByNpcTypeID(127019);
  my $ali_mob = $entity_list->GetMobByNpcTypeID(127020);
  my $treah_mob = $entity_list->GetMobByNpcTypeID(127021);
  my $grahl_mob = $entity_list->GetMobByNpcTypeID(127022);
  my $galiel_mob = $entity_list->GetMobByNpcTypeID(127023);
  my $sfspirit_mob = $entity_list->GetMobByNpcTypeID(127024);
  my $ppuma_mob = $entity_list->GetMobByNpcTypeID(127029);
  my $ttreant_mob = $entity_list->GetMobByNpcTypeID(127030);
  my $afspirit_mob = $entity_list->GetMobByNpcTypeID(127031);
  my $gslight_mob = $entity_list->GetMobByNpcTypeID(127034);
  my $gtakish_mob = $entity_list->GetMobByNpcTypeID(127035);
  my $gpower_mob = $entity_list->GetMobByNpcTypeID(127037);
  my $ordro_mob = $entity_list->GetMobByNpcTypeID(127040);
  my $melder_mob = $entity_list->GetMobByNpcTypeID(127042);
  my $atotem_mob = $entity_list->GetMobByNpcTypeID(127047);
  my $sprot_mob = $entity_list->GetMobByNpcTypeID(127054);
  my $fsuni_mob = $entity_list->GetMobByNpcTypeID(127093);
  my $prince_mob = $entity_list->GetMobByNpcTypeID(127096);
     quest::spawn2(127098,0,0,-247,1609,-40,424);
     quest::depop();

  if ($atotem_mob) {
    my $atotem_mobnpc = $atotem_mob->CastToNPC();
    $atotem_mobnpc->AddToHateList($client, 1);
  }
  if ($sprot_mob) {
    my $sprot_mobnpc = $sprot_mob->CastToNPC();
    $sprot_mobnpc->AddToHateList($client, 1);
  }
  if ($fsuni_mob) {
    my $fsuni_mobnpc = $fsuni_mob->CastToNPC();
    $fsuni_mobnpc->AddToHateList($client, 1);
  }
  if ($prince_mob) {
    my $prince_mobnpc = $prince_mob->CastToNPC();
    $prince_mobnpc->AddToHateList($client, 1);
  }
}