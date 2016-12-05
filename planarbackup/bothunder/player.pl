sub EVENT_CLICKDOOR {
	my $x = $client->GetX();
	my $y = $client->GetY();
	my $z = $client->GetZ();
	my $raid = $entity_list->GetRaidByClient($client);
	my $group = $entity_list->GetGroupByClient($client);
	if($doorid == 51) { #Agnarr Tower
		$client->MovePC(209, -765, -1735, 1270, 0);
	}
	elsif($doorid == 61) { #SE tower
		$client->MovePC(209, 85, 145, 635, 128);
	}
	elsif($doorid == 63) { #SW tower
		$client->MovePC(209, -830, -865, 1375, 128);
	}
	elsif($doorid == 65) { #NW tower
		$client->MovePC(209, -350, -2200, 1955, 255);
	}
	elsif($doorid == 67) { #NE tower
		$client->MovePC(209, 150, -1220, 1120, 128);
	}
}