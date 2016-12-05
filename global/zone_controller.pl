sub EVENT_SIGNAL {
	#######        #summonall command
	if ($signal == 14000) {
		my @clientlist = $entity_list->GetClientList();
		foreach $singleclient (@clientlist) {
			if (not $singleclient->GetGM()) {
				$singleclient->SetGlobal("presummonreturnzone",$singleclient->GetZoneID(),5,"F");
				$singleclient->SetGlobal("presummonreturnx",(int($singleclient->GetX() * 100) / 100),5,"F");
				$singleclient->SetGlobal("presummonreturny",(int($singleclient->GetY() * 100) / 100),5,"F");
				$singleclient->SetGlobal("presummonreturnz",(int($singleclient->GetZ() * 100) / 100),5,"F");
				$singleclient->SetGlobal("presummonreturnh",(int($singleclient->GetHeading() * 100) / 100),5,"F");
				my $summonzone = (int(plugin::readglobal("summonallzone") * 100) / 100);
				my $summonx = (int(plugin::readglobal("summonallx") * 100) / 100);
				my $summony = (int(plugin::readglobal("summonally") * 100) / 100);
				my $summonz = (int(plugin::readglobal("summonallz") * 100) / 100);					
				my $summonh = (int(plugin::readglobal("summonallh") * 100) / 100);					
				$singleclient->MovePC($summonzone,$summonx,$summony,$summonz,$summonh);
			}
		}
	}
	#######        #returnplayers command
	elsif ($signal == 15000) {
		my @clist = $entity_list->GetClientList();
		foreach my $sclient (@clist) {
			if (not $sclient->GetGM()) {
				$sclient->SignalClient(50);
			}
		}
	}
}


# This workarounds the problem when booted zone is already in-sync with spawn_events, and since no time updates occur the spawn_condition is defaulted to 0.

