my @players = ();
my $group;
my $instance;

sub EVENT_SAY {

my $Enter1Inst = quest::saylink("Enter Instance 1", 1);
my $Enter2Inst = quest::saylink("Enter Instance 2", 1);
my $Enter3Inst = quest::saylink("Enter Instance 3", 1);
my $Enter4Inst = quest::saylink("Enter Instance 4", 1);
my $Enter5Inst = quest::saylink("Enter Instance 5", 1);



if ($text =~/hail/i) 
		{
			$client->Message(315, "$npc_name says, 'Please make a choice:'");
			$client->Message(315, "..::[POTIMEB Instance: $zoneln]::..");
			$client->Message(315, "[$Enter1Inst]");
			$client->Message(315, "[$Enter2Inst]");
						$client->Message(315, "[$Enter3Inst]");
									$client->Message(315, "[$Enter4Inst]");
												$client->Message(315, "[$Enter5Inst]");

			
		} # End hail




		
	if ($text =~/Enter Instance 1/i) 
		{
					
			$client->Message(315, "$npc_name says, 'Checking Instance 1.'");
		if (defined($qglobals{"PotimeBInsta1"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$POTBInst1 = $qglobals{"PotimeBInsta1"};
										 quest::setglobal("POTI", 1, 5, "D1");
										quest::AssignToInstance($POTBInst1);
										quest::MovePCInstance(223, $POTBInst1, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [POTimeB Instance] (1) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$POTBInst1 = quest::CreateInstance("potimeb", 0, 86400); ### Set to 1 day IN SECONDS
										quest::AssignToInstance($POTBInst1); 
										quest::setglobal("PotimeBInsta1",$POTBInst1,7,"D1"); ### Set to 7 day QGLOBAL
										#quest::write("InstanceLogs/POTBInst1.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance(223, $POTBInst1, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [POTimeB Instance] (1) now.'");
									}	
							
		} 	# End Instance 1
	if ($text =~/Enter Instance 2/i) 
		{
			
			$client->Message(315, "$npc_name says, 'Checking Instance 2.'");
		if (defined($qglobals{"PotimeBInsta2"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$POTBInst2 = $qglobals{"PotimeBInsta2"};
										quest::setglobal("POTI", 2, 5, "D1");
										quest::AssignToInstance($POTBInst2);
										quest::MovePCInstance(223, $POTBInst2, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [POTimeB Instance] (2) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$POTBInst2 = quest::CreateInstance("potimeb", 0, 86400); ### Set to 1 day IN SECONDS
										quest::AssignToInstance($POTBInst2); 
										quest::setglobal("PotimeBInsta2",$POTBInst2,7,"D1"); ### Set to 7 day QGLOBAL
										#quest::write("InstanceLogs/POTBInst2.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance(223, $POTBInst2, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [POTimeB Instance] (2) now.'");
									}	
		} 	# End Instance 2
			if ($text =~/Enter Instance 3/i) 
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 3.'");
		if (defined($qglobals{"PotimeBInsta3"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$POTBInst3 = $qglobals{"PotimeBInsta3"};
										quest::setglobal("POTI", 3, 5, "D1");
										quest::AssignToInstance($POTBInst3);
										quest::MovePCInstance(223, $POTBInst3, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [POTimeB Instance] (3) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$POTBInst3 = quest::CreateInstance("potimeb", 0, 86400); ### Set to 1 day IN SECONDS
										quest::AssignToInstance($POTBInst3); 
										quest::setglobal("PotimeBInsta3",$POTBInst3,7,"D1"); ### Set to 7 day QGLOBAL
										#quest::write("InstanceLogs/POTBInst3.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance(223, $POTBInst3, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [POTimeB Instance] (3) now.'");
									}	
		} 	# End Instance 3
			if ($text =~/Enter Instance 4/i) 
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 4.'");
		if (defined($qglobals{"PotimeBInsta4"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$POTBInst4 = $qglobals{"PotimeBInsta4"};
										quest::setglobal("POTI", 4, 5, "D1");
										quest::AssignToInstance($POTBInst4);
										quest::MovePCInstance(223, $POTBInst4, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [POTimeB Instance] (4) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$POTBInst4 = quest::CreateInstance("potimeb", 0, 86400); ### Set to 1 day IN SECONDS
										quest::AssignToInstance($POTBInst4); 
										quest::setglobal("PotimeBInsta4",$POTBInst4,7,"D1"); ### Set to 7 day QGLOBAL
										#quest::write("InstanceLogs/POTBInst4.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance(223, $POTBInst4, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [POTimeB Instance] (4) now.'");
									}	
		} 	# End Instance 4
			if ($text =~/Enter Instance 5/i) 
		{
			$client->Message(315, "$npc_name says, 'Checking Instance 5.'");
		if (defined($qglobals{"PotimeBInsta5"})) { ### IF THERE IS AN INSTANCE ASSIGNED!
										$POTBInst5 = $qglobals{"PotimeBInsta5"};
										quest::setglobal("POTI", 5, 5, "D1");
										quest::AssignToInstance($POTBInst5);
										quest::MovePCInstance(223, $POTBInst5, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Moving you to [POTimeB Instance] (5) now.'");
									}
									else { ### IF THERE ISN'T AN INSTANCE ASSIGNED, ASSIGN IT!
										$POTBInst5 = quest::CreateInstance("potimeb", 0, 86400); ### Set to 1 day IN SECONDS
										quest::AssignToInstance($POTBInst5); 
										quest::setglobal("PotimeBInsta5",$POTBInst5,7,"D1"); ### Set to 7 day QGLOBAL
										#quest::write("InstanceLogs/POTBInst5.txt","[$timestamp] : $name has created instance $zoneln");
										quest::MovePCInstance(223, $POTBInst5, -36, 1352, 496); ### SENDS PLAYER POTB with COORDS
										$client->Message(315, "$npc_name says, 'Instance not created, creating and moving you to [POTimeB Instance] (5) now.'");
									}	
		} 	# End Instance 5



}
