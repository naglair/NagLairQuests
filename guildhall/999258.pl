#Flags quest for Air/Fear/Hate
#Starts in Guildlobby - 3 items required per toon to flag up for Planes.
#NPCNAME: Arch Mage Kirilynor
#NPCID: 999258

sub EVENT_SAY {
my $npcname = $npc->GetCleanName();
my $globalname = "ClassicPlanes";
my $globalname2 = "FlagKills";
my $Planar = quest::saylink("Planar");
my $within = quest::saylink("within");
my $work = quest::saylink("work");
my $Catalysts = quest::saylink("Catalysts");
my $power = quest::saylink("power");
my $Staff = quest::saylink("Staff of Focus");
my $Crystal = quest::saylink("Crystal Sphere");
my $phylactery = quest::saylink("Phylactery");

if ($text =~/remove globals/i) {
	plugin::Whisper("Globals removed");
	quest::delglobal("$globalname");
	}

if (!defined $qglobals{$globalname}) {
if ($text =~/hail/i) {
	plugin::Whisper("Hail $name.  My name is $npcname, I am a member of an Elite Order who studies the [$Planar] Realms.");
	}
	if ($text =~/planar/i) {
		plugin::Whisper("Theres more to Norrath than the ground you walk on.  Each of the Deities have their own planar realms, and over the years we have found ways to access them.  Intrepid Adventurer's such as yourself are often drawn to them by the promise of powerful items, riches, and fame.  Others seek the Arcane Knowledge that lies [$within].");
		}
		if ($text =~/within/i) {
			plugin::Whisper("If your seeking access, know that it requires a large ammount of energy to get even one person into a plane.  While a few have physical connections, gates if you will, to our plane, others dont.  Even these physical connections require catalysts to transport people through.  If you want to access the planes I can help, but it will require some [$work]");
			}
			if ($text =~/work/i) {
				plugin::Whisper("For Every One person who wants to access the planes we will require Three [$Catalysts].");
				}
				if ($text =~/Catalysts/i) {
					plugin::Whisper("The First Catalyst required is The Pyhlactery of a Lich.  The [$power] stored within such a [$phylactery] is enough to sustain a portal for a single person for months.");
					}
					if ($text =~/power/i) {
						plugin::Whisper("Yes the Phylactery will be the battery.  The second and third items are a [$Staff] and a [$Crystal].");
						}
						if ($text =~/Phylactery/i) {
							plugin::Whisper("Last we heard there was a Lich who had settled in with some beholders.  Find the beholders, find the lich, and kill him.  Return with his Phylactery.");
							}
							if ($text =~/Staff/i) {
								plugin::Whisper("The Staff of Focus Will allow us to focus the Energy from the Phylactery.  According to our books there was an entity of Hate which carried such a staff.  The focus will require a large fresh water source to draw its power, with the phylactery we wont need this.  Search the large bodies of water and you should find this entity, kill it and return the staff.");
								}
								if ($text=~/Crystal/i) {
									plugin::Whisper("The final item will allow us to open the portals.  The Crystal is the essence of an Air elemental coalesced into a ball of pure crystal.  Word has come to us that sailors are reporting a great air elemental stalking the islands of Norrath's oceans.  Unfortunately we have heard such stories from all corners of the globe.  Search the seas $name, and you will eventually find it.  Return to me when you have the crystal.");
									quest::setglobal("$globalname",1,5,'F');
									quest::setglobal("$globalname2",1,5,'F');
									}
		} elsif (defined $qglobals{$globalname}) {
				if ($qglobals{$globalname} == 1) {
					if ($text =~/hail/i) {
						plugin::Whisper("Plesae return when you have all 3 items $name.");
						}
					}
				}
}

#sub EVENT_ITEM {
#my $globalname = "ClassicPlanes";

#if (defined $qglobals{$globalname}) {
#	if ($qglobals{$globalname} == 



									
			
		