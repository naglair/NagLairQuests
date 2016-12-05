#Dungeon Hunter Quest (Currently Classic Dungeons Only)
#NPC NAME: Logan the Bounty Hunter (human male)
#script by Bront
#Provides 3 Classic Bounty Hunter quests
#first Task = Blackburrow/Crushbone/Unrest/Runnyeye
#2nd Task = SolA, Cazic, Paw, Mistmoore
#3rd Task = SolB,LGuk, and Kedge

sub EVENT_SPAWN {
quest::set_proximity($x-50,$x+50,$y-50,$y+50,$z-50,$z+50);
}

sub EVENT_ENTER {
my $globalname = "BountyHunterEnter";
if (!defined $qglobals{$globalname}) {
	$client->Message(14,"$NPCName Tries to Catch your Attention!");
	plugin::Whisper("$name, Do you want to help me with a quest?");
	quest::setglobal("$globalname",1,5,'F');
	}
}

sub EVENT_SAY {
my $NPCName = $npc->GetCleanName();
my $globalname = "BountyHunt";
my $too = quest::saylink("Too Much", 1);
my $benefactors = quest::saylink("benefactors", 1);
my $Reward = quest::saylink("Reward", 1);	
my $Help = quest::saylink("Help", 1);
my $contracts = quest::saylink("contracts", 1);
my $work = quest::saylink("work", 1);
my $job = quest::saylink("job", 1,);

if ($text =~/remove globals/i)
	{
	quest::delglobal("globalname");
	quest::delglobal("BountyHunt");
	plugin::Whisper("Your Globals have been cleared");
	}
	
if (!defined $qglobals{$globalname}) {
	if ($text =~/hail/i) {
		plugin::Whisper("Hail, $name.  my name is $NPCName.  I have been hunting bounties throughout all of Norrath my whole life, and until now i have yet to find one that has proven to be [$too] for me.");
		}
		if ($text =~/too/i) {
			plugin::Whisper("My [$benefactors] have given me a large contract to fill, and to be perfectly honest, I wont be able to get it all done myself.  The Contracts are vague at best and will require alot of sleuthing to find the targets.");
			}
			if ($text =~/benefactors/i) {
				plugin::Whisper("Now what kind of Bounty hunter would I be if I divulged that information to anyone who asked?  Perhaps in time I will introduce you to them, but for now [$Help] me, and I will [$Reward] you Greatly");
				}
				if ($text =~/reward/i) {
					plugin::Whisper("For Each contract you complete I will reward you with something great.  Keep in mind I'm taking a hit in my personal profits, but I assure you the investment will be well worth it.  These targets have been sought after for years.  Complete a contract, return to me for a reward, and when you complete all Three contracts the reward will be even greater!");
					}
					if ($text =~/help/i) {
						plugin::Whisper("Excellent!  Complete This job and I will be Eternally grateful!  Perhaps even introduce you to my benefactors.  We will see but for now go out and start bounty hunting!");
						quest::setglobal("$globalname",1,5,'F');
						quest::assigntask(2016);  #Crushbone/CB/Runnyeye and Blackburrow Task
						}
}

if (defined $qglobals{$globalname}) {
	if ($qglobals{$globalname} == 1) {
		if (quest::istaskcompleted(2016)) {
			plugin::Whisper("Excellent Job $name!  Are you ready to help me with the next few contracts?  Be Warned These will be more difficult than the last.");
			}
			if ($text =~/contracts/i) {
				plugin::Whisper("Here you go $name.  When this is filled return again and i will give you the final one.");
				quest::assigntask(); #SolA/MM/CT and Paw Task
				quest::setglobal("$globalname",2,5,'F');
				}
	}
}

if (defined $qglobals{$globalname}) {
	if ($qglobals{$globalname} == 2) {
		if (quest::istaskcompleted()) {
			plugin::Whisper("Yes! You did it.  We are one step closer to finally being done with these contracts.  Are you ready for the final [$job]?  This is the toughest of all.");
			}
			if ($text =~/job/i) {
				plugin::Whisper("Excellent.  Here is the final task $name.  Be prepared for tough fights, these targets won't go down easily!");
				quest::assigntask(); #Solb/Lguk/Kedge Task
				quest::setglobal("$globalname",3,5,'F');
				}
	}
}

if (defined $qglobals{$globalname}) {
	if ($qglobals{$globalname} == 3) {
		if (quest::istaskcompleted()) {
			plugin::Whisper("Yes! You have done it $name!  My benefactor's will be quite pleased to see it has been done.  Now *ahem* do me a favor and lets keep the fact that you did all the work between us hmm? Come back to see me soon, I'm sure after the stellar job I did there will be more work than ever before!");
			quest::setglobal("$globalname",4,5,'F');
			}
	}
}
}



























