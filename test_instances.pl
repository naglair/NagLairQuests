sub EVENT_SAY {

if ($text =~/Hail/i){
plugin::Whisper ("Good day to you, $name. Are you ready for a  [Public] or [Guild] instance?"); }

if ($text =~/Public/i){
#Check if instance exists... if it doesnt, create it. 
quest::CreateInstance(guildhall, 0, 300);
quest::GetInstanceID(guildhall, 0);
#assign so-and-so to the instance
quest::AssignToInstance(1);
plugin::Whisper ("Ok do you want to [go] now?");
}

if ($text =~/Guild/i){
quest::CreateInstance(guildhall, 0, 300);
quest::GetInstanceID(guildhall, 0);
quest::AssignToInstance(1);
plugin::Whisper ("Ok do you want to [go] now?");
}

if ($text =~/go/i){
quest::MovePCInstance(345, 1, 0, 1, 2.7, 0);
}

}




plugin::SendToInstance("solo/guild/group/public", "Zone Short Name", Version, X, Y, Z, "Identifier", duration in seconds");
plugin::SendToInstance("public", "blackburrow", 1, 0, 0, 0, "BB1", 1200);
plugin::SendToInstance("public", "blackburrow", 2, 0, 0, 0, "BB1", 1200);

sub EVENT_SAY
{
	if($text=~/hail/i){
		$client->Message(315, "Hello $name, would you be interested in creating a new [zone]?");
	}
	if($text=~/zone/i){
		plugin::SendToInstance("guild", sebilis, 1, 0, 235, 40, "Inst", 648000);
	}
}



sub EVENT_SAY {
	my $group = $client->GetGroup();
	if ($text =~/Hail/i)
	{
	plugin::Whisper("Just say the word [group].");
	}
	if (($text =~/group/i) && $ulevel >= 80 && $hasitem{219532} && $group) {
		quest::CreateInstance("crystallos", 1, 21600);
		quest::AssignGroupToInstance("crystallos"); 
		quest::MovePCInstance(446, "crystallos", -65, -200, -75);
        }
	elsif (($text =~/group/i) && $ulevel <= 79 && $hasitem{219532} && $group) {
		plugin::Whisper("Sorry but you are not strong enough for this quest come back when you have gained more experience.");
        }
	elsif (($text =~/group/i) && $ulevel >= 80 && !$hasitem{219532} && $group) {
		plugin::Whisper("Sorry but you do not have the key needed to enter the zone for this quest. Seek out the Relic Gatekeeper, she might be able to help you.");
        }
	elsif (($text =~/group/i) && $ulevel >= 80 && $hasitem{219532} && !$group) {
		plugin::Whisper("Sorry but you are not in a group. Find a group then try again.");
        }
}




sub EVENT_SAY {

	my $Cx = $client->GetX();
	my $Cy = $client->GetY();
	my $Cz = $client->GetZ();

	my $npc_name = $npc->GetCleanName();
	my $zoneid1 = "Instance1$zonesn$zoneid";
	my $zoneid2 = "Instance2$zonesn$zoneid";
	
	my $Enter1Inst = quest::saylink("Enter Instance 1", 1);
	my $Enter2Inst = quest::saylink("Enter Instance 2", 1);
	my $ExitInst = quest::saylink("Exit Instance", 1);

    if ($text =~/hail/i) 
	{
		$client->Message(315, "$npc_name says, 'Please make a choice:'");
		$client->Message(315, "$Enter1Inst");
		$client->Message(315, "$Enter2Inst");
		$client->Message(315, "$ExitInst");
		
	} # End hail

	if ($text =~/Enter Instance 1/i) 
	{
		$client->Message(315, "$npc_name says, 'Give me 1000 platinum to enter $zonesn Instance Version (1)'");
	} # End Instance 1
	
	if ($text =~/Enter Instance 2/i) 
	{
		$client->Message(315, "$npc_name says, 'Give me 2000 platinum to enter $zonesn Instance Version (2)'");
	} # End Instance 2
	
	if ($text =~ /^Exit Instance$/i)
		{
			$client->Message(315, " " );
			$client->Message(315, "Moving player $name to a non-instance version of $zoneln.");
			quest::movepc($zoneid,$Cx,$Cy,$Cz); 
		}				

} # End sub EVENT_SAY


sub EVENT_ITEM
{
	my $Cx = $client->GetX();
	my $Cy = $client->GetY();
	my $Cz = $client->GetZ();
	my $npc_name = $npc->GetCleanName();
	my $zoneid1 = "Instance1$zonesn$zoneid";
	my $zoneid2 = "Instance2$zonesn$zoneid";
	
	if ($platinum == 1000) # IF 1k+ plat for instance 2
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 1.'");
		
			if (defined($qglobals{"$zoneid1"}))
			{
				my $instance_1 = $qglobals{"$zoneid1"};
				quest::AssignToInstance($instance_1);
				quest::MovePCInstance($zoneid, $instance_1, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to $zonesn Instance (1) now.'");
			}
			else
			{
				$client->Message(315, "$npc_name says, 'No instance exist, creating one ...'");
				my $instanceID = quest::CreateInstance("$zonesn", 0, 86400);
				quest::AssignToInstance($instanceID); 
				quest::setglobal("$zoneid1",$instanceID,7,"H24");
				quest::MovePCInstance($zoneid, $instanceID, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to $zonesn Instance (1) now.'");
			}
		} # End plat > 1000
		
	elsif ($platinum == 2000) # IF 2k+ plat for instance 2
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 2.'");
		
			if (defined($qglobals{"$zoneid2"}))
			{
				my $instance_2 = $qglobals{"$zoneid2"};
				quest::AssignToInstance($instance_2);
				quest::MovePCInstance($zoneid, $instance_2, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to $zonesn Instance (2) now.'");
			}
			else
			{
				$client->Message(315, "$npc_name says, 'No instance exist, creating one ...'");
				my $instanceID = quest::CreateInstance("$zonesn", 0, 86400);
				quest::AssignToInstance($instanceID); 
				quest::setglobal("$zoneid2",$instanceID,7,"H24");
				quest::MovePCInstance($zoneid, $instanceID, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to $zonesn Instance (2) now.'");
			}
		} # End plat > 2000		

	else # If not enough plat, return everything.
		{
			plugin::return_items(\%itemcount);
    	}		
		
} # End sub EVENT_ITEM

#maybe working? ^^^




#working ???  vv

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
	my $accountname1 = $client->AccountName();
	my $accountname = "<c \"#FBB117\">$accountname1</c>";
	my $accountid = $client->AccountID();
	my $bankcredit = $qglobals{"BankCredit_$accountid"} ? $qglobals{"BankCredit_$accountid"} : 0;
    if ($text =~/hail/i) 
		{
			$client->Message(315, "$npc_name says, 'Please make a choice:'");
			$client->Message(315, "..::[LDON Instance: $zonln]::..");
			$client->Message(315, "[$Enter1Inst]");
			$client->Message(315, "[$Enter2Inst]");
			$client->Message(315, "[$ExitInst]");
			
		} # End hail
	if ($text =~/Enter Instance 1/i) 
		{
			$client->Message(315, "$npc_name says, 'Give me 1000 platinum to enter $zonesn Instance Version (1)'");
			$client->Message(315, "Or enter with [$Waypoint1Inst]");
		} 	# End Instance 1
	if ($text =~/Enter Instance 2/i) 
		{
			$client->Message(315, "$npc_name says, 'Give me 2000 platinum to enter $zonesn Instance Version (2)'");
			$client->Message(315, "Or enter with [$Waypoint2Inst]");
		} 	# End Instance 2
	if ($text =~ /^Exit Instance$/i)
		{
			$client->Message(315, " " );
			$client->Message(315, "Moving player $name to a non-instance version of $zoneln.");
			quest::movepc($zoneid, $Cx, $Cy, $Cz); 
		}	
	if ($text =~ /Waypoint Credit Instance 1/i){
		my $InstanceCost = 1000; ###1,000 Entry Fee
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
							$client->Message(315, "$npc_name says, 'Checking Instance 1.'");
							if (defined($qglobals{"Inst1$zonesn"}))
								{
									my $instance_1 = $qglobals{"Inst1$zonesn"};
									quest::AssignToInstance($instance_1);
									quest::MovePCInstance($zoneid, $instance_1, $Cx, $Cy, $Cz);
									$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (1) now.'");
								}
							else
								{
									$client->Message(315, "$npc_name says, 'No instances exist, creating one ...'");
									my $instanceID = quest::CreateInstance("$zonesn", 0, 0);
									quest::AssignToInstance($instanceID); 
									quest::setglobal("Inst1$zonesn",$instanceID, 7, 0);
									quest::MovePCInstance($zoneid, $instanceID, $Cx, $Cy, $Cz);
									$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (1) now.'");
								}
							}		
				}
				if ($text =~ /Waypoint Credit Instance 2/i){
					my $InstanceCost = 2000; ###2,000 Entry Fee
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
							if (defined($qglobals{"Inst2$zonesn"}))
								{
									my $instance_2 = $qglobals{"Inst2$zonesn"};
									quest::AssignToInstance($instance_2);
									quest::MovePCInstance($zoneid, $instance_2, $Cx, $Cy, $Cz);
									$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (2) now.'");
								}
							else
								{
									$client->Message(315, "$npc_name says, 'No instances exist, creating one ...'");
									my $instanceID = quest::CreateInstance("Inst2$zonesn", 0, 0);
									quest::AssignToInstance($instanceID); 
									quest::setglobal("Inst2$zonesn", $instanceID, 7, 0);
									quest::MovePCInstance($zoneid, $instanceID, $Cx, $Cy, $Cz);
									$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (2) now.'");
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
	if ($platinum == 1000) # IF 1k+ plat for instance 2
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 1.'");
		
			if (defined($qglobals{"Inst1$zonesn"}))
			{
				my $instance_1 = $qglobals{"Inst1$zonesn"};
				quest::AssignToInstance($instance_1);
				quest::MovePCInstance($zoneid, $instance_1, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (1) now.'");
			}
			else
			{
				$client->Message(315, "$npc_name says, 'No instances exist, creating one ...'");
				my $instanceID = quest::CreateInstance("$zonesn", 0, 0);
				quest::AssignToInstance($instanceID); 
				quest::setglobal("Inst1$zonesn",$instanceID, 7, 0);
				quest::MovePCInstance($zoneid, $instanceID, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (1) now.'");
			}
		} # End plat > 1000
		
	elsif ($platinum == 2000) # IF 2k+ plat for instance 2
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 2.'");
		
			if (defined($qglobals{"Inst2$zonesn"}))
			{
				my $instance_2 = $qglobals{"Inst2$zonesn"};
				quest::AssignToInstance($instance_2);
				quest::MovePCInstance($zoneid, $instance_2, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (2) now.'");
			}
			else
			{
				$client->Message(315, "$npc_name says, 'No instances exist, creating one ...'");
				my $instanceID = quest::CreateInstance("Inst2$zonesn", 0, 0);
				quest::AssignToInstance($instanceID); 
				quest::setglobal("Inst2$zonesn", $instanceID, 7, 0);
				quest::MovePCInstance($zoneid, $instanceID, $Cx, $Cy, $Cz);
				$client->Message(315, "$npc_name says, 'Moving you to [$zoneln Instance] (2) now.'");
			}
		} # End plat > 2000		

	else # If not enough plat, return everything.
		{
			plugin::return_items(\%itemcount);
    	}		
		
} # End sub EVENT_ITEM




#this should be working fine... vvv
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
			$client->Message(315, "..::[LDON Instance: $zoneln]::..");
			$client->Message(315, "[$Enter1Inst]");
			$client->Message(315, "[$Enter2Inst]");
			$client->Message(315, "[$ExitInst]");
			
		} # End hail
	if ($text =~/Enter Instance 1/i) 
		{
			$client->Message(315, "$npc_name says, 'Give me 1000 platinum to enter [$zoneln] Instance Version (1)'");
			$client->Message(315, "Or enter with [$Waypoint1Inst]");
		} 	# End Instance 1
	if ($text =~/Enter Instance 2/i) 
		{
			$client->Message(315, "$npc_name says, 'Give me 2000 platinum to enter [$zoneln] Instance Version (2)'");
			$client->Message(315, "Or enter with [$Waypoint2Inst]");
		} 	# End Instance 2
	if ($text =~ /^Exit Instance$/i)
		{
			$client->Message(315, " " );
			$client->Message(315, "Moving player $name to a non-instance version of [$zoneln].");
			quest::movepc($zoneid, $Cx, $Cy, $Cz); 
		}	
	if ($text =~ /Waypoint Credit Instance 1/i){
		my $InstanceCost = 1000; ###1,000 Entry Fee
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
					my $InstanceCost = 2000; ###2,000 Entry Fee
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
	if ($platinum == 1000) # IF 1k+ plat for instance 2
		{
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
		} # End plat > 1000
		
	elsif ($platinum == 2000) # IF 2k+ plat for instance 2
		{
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
		} # End plat > 2000		

	else # If not enough plat, return everything.
		{
			plugin::return_items(\%itemcount);
    	}		
		
} # End sub EVENT_ITEM