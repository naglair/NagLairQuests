sub EVENT_ENTERZONE {
	if (defined (plugin::readglobal("vulakcooldown"))) {
		$client->Message (15, "Vulak Aerr has ".TimeToQglobalExpiration("vulakcooldown")." remaining on cool-down!");
	}
	else {
		$client->Message (15, "Vulak Aerr has no time left on its cool-down!");
	}
}

## Ghanja
## Use: TimeToQglobalExpiration("qglobalname")
## Result: "xx Years xx Days xx Hours xx Minutes xx Seconds" or "No Time" if none
##
sub TimeToQglobalExpiration {
	my $ic = $_[0];
	my $dbh = plugin::LoadMysql();
	my $sth = $dbh->prepare("SELECT `expdate` FROM `quest_globals` WHERE name = '".$ic."' LIMIT 1");
	$sth->execute();	
	@data = $sth->fetchrow_array();
	$sth->finish();
	$dbh->disconnect();
	if (defined $data[0]) {
		my $TimeDiff = abs(time - $data[0]); ## assumes EQEMU will remove the qglobal once expired!
		my $YearsLeft = 0;
		my $DaysLeft = 0;
		my $HoursLeft = 0;
		my $MinutesLeft = 0;
		my $SecondsLeft = 0;
		my $returnstring = "";
		if ($TimeDiff > 31556926) {
			$YearsLeft = int($TimeDiff / 31556926);
			$TimeDiff -= $YearsLeft * 31556926;
			$returnstring = $YearsLeft." Years ";
		}
		if ($TimeDiff > 86400) { 
			$DaysLeft = int($TimeDiff / 86400);
			$TimeDiff -= $DaysLeft * 86400;
			$returnstring = $returnstring.$DaysLeft." Days ";
		}
		if ($TimeDiff > 3600) {
			$HoursLeft = int($TimeDiff / 3600);
			$TimeDiff -= $HoursLeft * 3600;
			$returnstring = $returnstring.$HoursLeft." Hours ";
		}
		if ($TimeDiff > 60) {
			$MinutesLeft = int($TimeDiff / 60);
			$TimeDiff -= $MinutesLeft * 60;
			$returnstring = $returnstring.$MinutesLeft." Minutes ";
		}
		$SecondsLeft = $TimeDiff;
		$returnstring = $returnstring.$SecondsLeft." Seconds ";
		return $returnstring;
	}
	else {
		return "No Time";
	}
}