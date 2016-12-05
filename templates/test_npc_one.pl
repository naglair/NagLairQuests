sub EVENT_SAY {
	my $instanceIDnumber = quest::GetInstanceID("potimeb", 0);
	my $instanceIDnumberz = $qglobals{"PotimeBInsta1"};
	my $Cx = $client->GetX();
	my $Cy = $client->GetY();
	my $Cz = $client->GetZ();
	my $npc_name = $npc->GetCleanName();
	my $Enter1Inst = quest::saylink("Enter Instance 1", 1);
	my $Enter2Inst = quest::saylink("Enter Instance 2", 1);
	my $Waypoint1Inst = quest::saylink("Waypoint Credit Instance 1", 1);
	my $Waypoint2Inst = quest::saylink("Waypoint Credit Instance 2", 1);
	my $ExitInst = quest::saylink("Exit Instance", 1);
	my $accountname = $client->AccountName();
	my $accountid = $client->AccountID();
	my $bankcredit = $qglobals{"BankCredit_$accountid"} ? $qglobals{"BankCredit_$accountid"} : 0;
    if ($text =~/hail/i) 
		{
			$client->Message(315, "$npc_name says, 'POTI = $qglobals{POTI}   instance =  $instanceIDnumberz '");

			
		} # End hail
		}
	