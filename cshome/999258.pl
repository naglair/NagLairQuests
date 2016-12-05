#Flags quest for Air/Fear/Hate
#Starts in Guildlobby - 3 items required per toon to flag up for Planes.
#NPCNAME: Arch Mage Kirilynor
#NPCID: 999258

sub EVENT_SAY {
my $npcname = $npc->GetCleanName();
my $globalname = "ClassicPlanes";
my $Planar = quest::saylink("Planar", 1);
my $within = quest::saylink("within", 1);
my $work = quest::saylink("work", 1);
my $Catalysts = quest::saylink("Catalysts", 1);
my $Staff = quest::saylink("Staff of Focus", 1);
my $Crystal = quest::saylink("Crystal Sphere", 1);
my $Phylactery = quest::saylink("Phylactery", 1);
my $return = quest::saylink("return", 1);
my $sky = quest::saylink("Plane of Sky", 1);
my $hate = quest::saylink("Plane of Hate", 1);
my $fear = quest::saylink("Plane of Fear", 1);
my $again = quest::saylink("again", 1);
my $Sphere = quest::saylink("Crystal Sphere", 1);


if ($text =~/remove globals/i) {
	plugin::Whisper("Globals removed");
	quest::delglobal("$globalname");
	}
if ($text =~/what is my global/i) {
	plugin::Whisper("Your Global is - $globalname ");
	}

if (!defined $qglobals{$globalname}) {
if ($text =~/hail/i) {
	plugin::Whisper("Hail $name.  My name is $npcname, I am a member of an Elite Order who studies the [$Planar] Realms.");
	}
	if ($text =~/Planar/i) {
		plugin::Whisper("Theres more to Norrath than the ground you walk on.  Each of the Deities have their own planar realms, and over the years we have found ways to access them.  Intrepid Adventurer's such as yourself are often drawn to them by the promise of powerful items, riches, and fame.  Others seek the Arcane Knowledge that lies [$within].");
		}
		if ($text =~/within/i) {
			plugin::Whisper("If your seeking access, know that it requires a large ammount of energy to get even one person into a plane.  While a few have physical connections, gates if you will, to our plane, others dont.  Even these physical connections require catalysts to transport people through.  If you want to access the planes I can help, but it will require some [$work]");
			}
			if ($text =~/work/i) {
				plugin::Whisper("For Every One Person who seeks access I will require Three [$Catalysts].");
				}
				if ($text =~/Catalysts/i) {
					plugin::Whisper("The Three Catalysts are:  A Lich's [$Phylactery], A [$Staff] and A [$Crystal].");
					}
					if ($text =~/Phylactery/i) {
						plugin::Whisper("The Phylactery will be the power source.  It is said that an ancient Lich has awoken and is amassing an army of beholders.  We don't know for sure where he is, Lich's are notoriously hard to find, but if you search some of Antonica's more less-traveled locations you will find him.");
						}
						if ($text =~/Staff of Focus/i) {
							plugin::Whisper("The Staff was once held by one of our members.  In a rash move he tried to use it to Enter Innoruuk's realm, unfortunatley for him the Demon he summoned Killed him and took the staff.  We have not heard exactly where the demon went with it, but the staff requires a large source of fresh water in order to focus the Power.  Search the Large bodies of Fresh water throughout Norrath, and I am sure you will find him.");
							}
							if ($text =~/Crystal Sphere/i) {
								plugin::Whisper("The Final Item is a Crystal sphere.  The sphere is used to focus the power of the ritual.  We have heard Rumors from Sailors of the oceans that a large Air Elemental has been spotted wandering throughout the islands of Norrath's Oceans.  After you have found all Three items [$return] to me.");
								}
								if ($text =~/return/i) {
									plugin::Whisper("Find these items, and return them too me, when you do that i will grant you access to the Planar Realms.");
									quest::setglobal("$globalname",1,5,'F');
									}
								}
			elsif (defined $qglobals{$globalname}) {
				if ($qglobals{$globalname} == 1) {
					if ($text =~/hail/i) {
						plugin::Whisper("Do you wish to hear the Hints [$again]?");
						}
						if ($text =~/again/i) {
							quest::plugin("Which do you want to hear again? The [$Phylactery], the [$Staff] or the [$Sphere]?");
							}
							if ($text =~/Sphere/i) {
							plugin::Whisper("The Final Item is a Crystal sphere.  The sphere is used to focus the power of the ritual.  We have heard Rumors from Sailors of the oceans that a large Air Elemental has been spotted wandering throughout the islands of Norrath's Oceans.");
							}
								
					}
				}
					if (defined $qglobals{$globalname}) {
						if ($qglobals{$globalname} == 2) {
							if ($text=~/hail/i) {
							plugin::Whisper("Hail, $name.  Would you like to go to $sky, $fear, or $hate?");
							}
							if ($text =~/Plane of Sky/i) {
								plugin::Whisper("$name, Stand close to me while i cast...");
								quest::movepc(71, 631.1, 1419.5, -664.2);
								}
								if ($text =~/Plane of Hate/i) {
									plugin::Whisper("$name, Stand close to me while i cast...");
									quest::movepc(76, -340.8, -352.7, 3.8); 
									}
									if ($text =~/Plane of Fear/i) {
										plugin::Whisper("$name, Stand close to me while i cast...");
										quest::movepc(72, 1033.6, -809.5, 109.4);
										}
						}
				}
										
								
							
}


sub EVENT_ITEM {
my $globalname = "ClassicPlanes";
my $npcname = $npc->GetCleanName();

if (defined $qglobals{$globalname}) {
	if ($qglobals{$globalname} == 1) {
		if ($itemcount{1267} == 1 && $itemcount{1270} == 1 && $itemcount{1319} == 1) {
			plugin::Whisper("Excellent!  Give me a moment $name.");
			$client->Message(14,"$npcname Begins to chant in an unknown Tongue");
			plugin::Whisper("Success!  We are now able to Transport you to the plane of your chosing $name.");
			quest::setglobal("$globalname",2,5,'F');
			}
		}
	}
}



									
			
		