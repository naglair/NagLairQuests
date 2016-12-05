sub EVENT_SAY {
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
			$client->Message(315, "$npc_name says, 'Please make a choice:'");
			$client->Message(315, "..::[POTIMEB Instance: $zoneln]::..");
			$client->Message(315, "[$Enter1Inst]");
			$client->Message(315, "[$Enter2Inst]");
			$client->Message(315, "[$ExitInst]");
			
		} # End hail
	if ($text =~/Enter Instance 1/i) 
		{
			$client->Message(315, "$npc_name says, 'Give me 1 platinum to enter [$zoneln] Instance Version (1)'");
			$client->Message(315, "Or enter with [$Waypoint1Inst]");
		} 	# End Instance 1
	if ($text =~/Enter Instance 2/i) 
		{
			$client->Message(315, "$npc_name says, 'Give me 2 platinum to enter [$zoneln] Instance Version (2)'");
			$client->Message(315, "Or enter with [$Waypoint2Inst]");
		} 	# End Instance 2
	if ($text =~ /^Exit Instance$/i)
		{
			$client->Message(315, " " );
			$client->Message(315, "Moving player $name to a non-instance version of [$zoneln].");
			quest::movepc($zoneid, $Cx, $Cy, $Cz); 
		}	
	if ($text =~ /Waypoint Credit Instance 1/i){
		my $InstanceCost = 1; ###1,000 Entry Fee
					if ($bankcredit < $InstanceCost)
						{
							$client->Message(315,"You need "
								. ($InstanceCost - $bankcredit) . " more plat!");
						}
						else {
							$bankcredit -= $InstanceCost;
							quest::setglobal("BankCredit_$accountid", "$bankcredit", 7, 'F');
							my $bankcredit = $qglobals{"BankCredit_$accountid"} ? $qglobals{"BankCredit_$accountid"} : 0;
							$client->Message(15, "[ACCOUNT BALANCE]: [$name] You now have $bankcredit platinum in account: [$accountname]");
							$timestamp = localtime(time);
							my $npc_name = $npc->GetCleanName(); 
							my $accountname1 = $client->AccountName();
							quest::write("InstanceLogs/Instance$zonesn.txt","[$timestamp] : $name the $class at $ulevel has used $InstanceCost on $npc_name for an instance, this player now has $bankcredit in his account: $accountname1.");
							$client->Message(315, "$npc_name says, 'Checking Instance 1.'");
							if (defined($qglobals{"LDONInsta1$zonesn"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$LDONInst1 = $qglobals{"LDONInsta1$zonesn"};
										quest::AssignToInstance($LDONInst1);
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (1) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$LDONInst1 = quest::CreateInstance("$zonesn", 0, 604800); ### Set to 7 day IN SECONDS
										quest::AssignToInstance($LDONInst1); 
										quest::setglobal("LDONInsta1$zonesn",$LDONInst1,7,"D7"); ### Set to 7 day QGLOBAL
										quest::write("InstanceLogs/LDONInst1$zonesn.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [$zoneln Instance] (1) now.'");
									}	
							}
				}
				if ($text =~ /Waypoint Credit Instance 2/i){
					my $InstanceCost = 2; ###2,000 Entry Fee
					if ($bankcredit < $InstanceCost)
						{
							$client->Message(315,"You need "
								. ($InstanceCost - $bankcredit) . " more plat!");
						}
						else {
							$bankcredit -= $InstanceCost;
							quest::setglobal("BankCredit_$accountid", "$bankcredit", 7, 'F');
							my $bankcredit = $qglobals{"BankCredit_$accountid"} ? $qglobals{"BankCredit_$accountid"} : 0;
							$client->Message(15, "[ACCOUNT BALANCE]: [$accountname] You now have $bankcredit platinum in [$accountname]");
							$timestamp = localtime(time);
							my $npc_name = $npc->GetCleanName(); 
							my $accountname1 = $client->AccountName();
							quest::write("InstanceLogs/Instance$zonesn.txt","[$timestamp] : $name the $class at $ulevel has used $InstanceCost on $npc_name for an instance, this player now has $bankcredit in his account: $accountname1.");
							$client->Message(315, "$npc_name says, 'Checking Instance 2.'");
							if (defined($qglobals{"LDONInsta2$zonesn"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$LDONInst1 = $qglobals{"LDONInsta2$zonesn"};
										quest::AssignToInstance($LDONInst1);
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (2) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$LDONInst1 = quest::CreateInstance("$zonesn", 0, 604800); ### Set to 7 day IN SECONDS
										quest::AssignToInstance($LDONInst1); 
										quest::setglobal("LDONInsta2$zonesn",$LDONInst1,7,"D7"); ### Set to 7 day QGLOBAL
										quest::write("InstanceLogs/LDONInst1$zonesn.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [$zoneln Instance] (2) now.'");
									}	
							}		
				}
}



sub EVENT_ITEM
{
	my $Cx = $client->GetX();
	my $Cy = $client->GetY();
	my $Cz = $client->GetZ();
	my $npc_name = $npc->GetCleanName();
	if ($platinum == 1) # IF 1k+ plat for instance 2
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 1.'");
		if (defined($qglobals{"LDONInsta1$zonesn"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$LDONInst1 = $qglobals{"LDONInsta1$zonesn"};
										quest::AssignToInstance($LDONInst1);
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (1) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$LDONInst1 = quest::CreateInstance("$zonesn", 0, 86400); ### Set to 7 day IN SECONDS
										quest::AssignToInstance($LDONInst1); 
										quest::setglobal("LDONInsta1$zonesn",$LDONInst1,7,"D1"); ### Set to 7 day QGLOBAL
										quest::write("InstanceLogs/LDONInst1$zonesn.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [$zoneln Instance] (1) now.'");
									}	
							}
		} # End plat > 1
		
	elsif ($platinum == 2) # IF 2k+ plat for instance 2
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 2.'");
		
			if (defined($qglobals{"LDONInsta2$zonesn"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$LDONInst1 = $qglobals{"LDONInsta2$zonesn"};
										quest::AssignToInstance($LDONInst1);
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (2) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$LDONInst1 = quest::CreateInstance("$zonesn", 0, 86400); ### Set to 7 day IN SECONDS
										quest::AssignToInstance($LDONInst1); 
										quest::setglobal("LDONInsta2$zonesn",$LDONInst1,7,"D1"); ### Set to 7 day QGLOBAL
										quest::write("InstanceLogs/LDONInst1$zonesn.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance($zoneid, $LDONInst1, $Cx, $Cy, $Cz); ### SENDS PLAYER TO SAME ZONE WITH SAME COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [$zoneln Instance] (2) now.'");
									}	
							}
		} # End plat > 2		

	else # If not enough plat, return everything.
		{
			plugin::return_items(\%itemcount);
    	}		
		
} # End sub EVENT_ITEM