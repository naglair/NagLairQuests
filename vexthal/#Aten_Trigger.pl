## Simple Vex Thal

sub EVENT_SPAWN {
	#### Vex Mob Checker
	quest::settimer ("checkvex", 4);
}

sub EVENT_TIMER {
	if ($timer eq "checkvex") {
		if (not defined (plugin::readglobal("aten"))) {
			if (not $entity_list->GetMobByNpcTypeID(158006)) {
				@bossescheck = (158014,158010,158015,158012,158013,158007,158008,158011,158009);
				$bossesnowup = 0;
				foreach my $checkboss (@bossescheck) {
					if ($entity_list->GetMobByNpcTypeID($checkboss)) {
						++$bossesnowup;
					}
				}
				if ($bossesnowup == 0) {
					if (not $entity_list->GetMobByNpcTypeID(158006)) {
						quest::depopall(158087);
						quest::depopall(158088);
						quest::depopall(158089);
						quest::depopall(158090);
						quest::depopall(158091);
						quest::depopall(158094);
						quest::spawn2(158006,0,0,1412,0,248.63,192);
					}
				}
			}
		}
	}
}