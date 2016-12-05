#Flags quest for Air/Fear/Hate
#Starts in Guildlobby - 3 items required per toon to flag up for Planes.
#NPCNAME: Arch Mage Kirilynor
#NPCID: 999258

sub EVENT_SAY {
	if ($text =~/Phylactery/i) {
		plugin::Whisper("The Phylactery will be the power source.  It is said that an ancient Lich has awoken and  ".
						"is amassing an army of beholders.  We don't know for sure where he is, Lich's are notoriously ".
						"hard to find, but if you search some of Antonica's more less-traveled locations you will find him.");
	}
	elsif ($text =~/Staff/i) {
		plugin::Whisper("The Staff was once held by one of our members.  In a rash move he tried to use it to Enter ".
						"Innoruuk's realm, unfortunatley for him the Demon he summoned Killed him and took the ".
						"staff.  We have not heard exactly where the demon went with it, but the staff requires a ".
						"large source of fresh water in order to focus the Power.  Search the Large bodies of Fresh ".
						"water throughout Norrath, and I am sure you will find him.");
	}
	elsif ($text =~/Crystal/i) {
		plugin::Whisper("The Final Item is a Crystal sphere.  The sphere is used to focus the power of the ".
						"ritual.  We have heard Rumors from Sailors of the oceans that a large Air Elemental ".
						"has been spotted wandering throughout the islands of Norrath's Oceans.  After you have ".
						"found all Three items [".quest::saylink("return", 1)."] to me.");
	}
	if (!defined $qglobals{"ClassicPlanes"}) {
		if ($text =~/hail/i) {
			$client->Message(14,"PLEASE NOTE READ ALL TEXT AND CLICK EVERY SAYLINK ON THIS MOB I WILL NO LONGER BE ".
								"REIMBURSING EATEN ITEMS - IF YOU DONT GO THROUGH TEXT YOUR ITEMS WILL BE EATEN");
			plugin::Whisper("Hail $name.  My name is ".$npc->GetCleanName().", I am a member of an Elite Order who ".
							"studies the [".quest::saylink("Planar", 1)."] Realms.");
			$client->SetEntityVariable("levelquestdialog", 1);
		}
		elsif ($text =~/Planar/i && $client->GetEntityVariable("levelquestdialog") == 1) {
			plugin::Whisper("Theres more to Norrath than the ground you walk on.  Each of the Deities have their own ".
							"planar realms, and over the years we have found ways to access them.  Intrepid Adventurer's ".
							"such as yourself are often drawn to them by the promise of powerful items, riches, and fame. 	".
							"Others seek the Arcane Knowledge that lies [".quest::saylink("within", 1)."].");
			$client->SetEntityVariable("levelquestdialog", 2);
		}
		elsif ($text =~/within/i && $client->GetEntityVariable("levelquestdialog") == 2) {
			plugin::Whisper("If your seeking access, know that it requires a large ammount of energy to get even one ".
							"person into a plane.  While a few have physical connections, gates if you will, to our ".
							"plane, others dont.  Even these physical connections require catalysts to transport ".
							"people through.  If you want to access the planes I can help, but it will require some ".
							"[".quest::saylink("work", 1)."]");
			$client->SetEntityVariable("levelquestdialog", 3);
		}
		elsif ($text =~/work/i && $client->GetEntityVariable("levelquestdialog") == 3) {
			plugin::Whisper("For Every One Person who seeks access I will require Three [".quest::saylink("Catalysts", 1)."].");
			$client->SetEntityVariable("levelquestdialog", 4);
		}
		elsif ($text =~/Catalysts/i && $client->GetEntityVariable("levelquestdialog") == 4) {
			plugin::Whisper("The Three Catalysts are:  A Lich's [".quest::saylink("Phylactery", 1)."], A ".
							"[".quest::saylink("Staff", 1)."] and A [".quest::saylink("Crystal", 1)."].");
			$client->SetEntityVariable("levelquestdialog", 5);
		}
		elsif ($text =~/return/i && $client->GetEntityVariable("levelquestdialog") == 5) {
			plugin::Whisper("Find these items, and return them too me, when you do that i will grant you access to the Planar Realms.");
			quest::setglobal("ClassicPlanes",1,5,'F');
		}
	}
	elsif (defined $qglobals{"ClassicPlanes"}) {
		if ($qglobals{"ClassicPlanes"} == 1) {
			if ($text =~/hail/i) {
				plugin::Whisper("Do you wish to hear the Hints [".quest::saylink("again", 1)."]?");
			}
			elsif ($text =~/again/i) {
				plugin::Whisper(	"Which do you want to hear again? The [".quest::saylink("Phylactery", 1)."], the ".
								"[".quest::saylink("Staff", 1)."] or the [".quest::saylink("Sphere", 1)."]?");
			}
			elsif ($text =~/Sphere/i) {
				plugin::Whisper("The Final Item is a Crystal sphere.  The sphere is used to focus the power of the ".
								"ritual.  We have heard Rumors from Sailors of the oceans that a large Air Elemental ".
								"has been spotted wandering throughout the islands of Norrath's Oceans.");
			}
		}
		elsif ($qglobals{"ClassicPlanes"} == 2) {
			if ($text=~/hail/i) {
				plugin::Whisper("Hail, $name.  Would you like to go to [".quest::saylink("sky", 1)."], ".
								" [".quest::saylink("fear", 1)."],  ".quest::saylink("hate", 1)."] ?");
			}
			elsif ($text =~/sky/i) {
				plugin::Whisper("$name, Stand close to me while i cast...");
				quest::movepc(71, 631.1, 1419.5, -664.2);
			}
			elsif ($text =~/hate/i) {
				plugin::Whisper("$name, Stand close to me while i cast...");
				quest::movepc(76, -340.8, -352.7, 3.8); 
			}
			elsif ($text =~/fear/i) {
				plugin::Whisper("$name, Stand close to me while i cast...");
				quest::movepc(72, 1033.6, -809.5, 109.4);
			}
		}
	}
}

sub EVENT_ITEM {
	if (defined $qglobals{"ClassicPlanes"}) {
		if ($qglobals{"ClassicPlanes"} == 1) {
			if (plugin::check_handin(\%itemcount, 1267 => 1, 1270 => 1, 1319 => 1)) {
				plugin::Whisper("Excellent!  Give me a moment $name.");
				$client->Message(14,"".$npc->GetCleanName()." begins to chant in an unknown Tongue");
				plugin::Whisper("Success!  We are now able to Transport you to the plane of your chosing $name.");
				quest::setglobal("ClassicPlanes",2,5,'F');
			}
		}
	} 
	else {
		plugin::return_items(\%itemcount);
		plugin::Whisper("Please Make sure you have listened to Everything i said carefuly before turning these in $name");
	}
}