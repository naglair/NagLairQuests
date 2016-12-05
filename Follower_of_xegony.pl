#
# Simple & Scalable
# Array + hash based quest template
#
# Valdaun  10/23/2009
# Charm Quest AA PURCHASE
# EDIT MADE MY
#SABRINA / ADAKOS
# 10-26-2011
#
################################################
# All turnins follow simple method:
#
# Quest Item + Component Cost = Reward
#
# Extremely scalable from a handful of sets
# to dozens, without any code bloat.
#
# All item IDs are typed only one time,
# reducing errors and simplifying changes
#
# Heavy use on say and item links + npc whispers
# for minimal say spam and ease of npc interaction
#
################################################
#
#######    BEGIN ARRAY MODS    #################
# 
################################################
#
# QUEST TURNINS AND REWARDS
#
################################################
#
# Component costs for quest turnins
# UNUSED IN AA EXP PURCHASES
my $rare_cost = 22503;	# blue diamond (dropped)
my $mid_cost = 10031;	# fire opal (bought)

################################################
#
# Arrays containing the item to turnin as the array index,
# which points to a cost & reward hash which will be looped
# through later in the say and handin sections.
#

my %defiant_turnins = (
#placeholders
59943 => { "cost" => "2", "reward" => 1119}, #rank2
1119 => { "cost" => "3", "reward" => 1261} #rank3







);

################################################
#
#  Whisper Color
#
my $whisper_color = 315;	# tan

################################################
#
#  Experience rewards
#

################################################
#
#######    END VARIABLE MODS     ###############
# 
################################################

sub EVENT_SAY {
my $AAPTS = $client->GetAAPoints();
################################################
#
#  Conversation navigation links for say section
#
my $charm = quest::saylink("charm");
my $now = quest::saylink("now");

	if($text=~/hail/i)
	{
		plugin::Whisper("Hello $uname. I will soon be able to  upgrade your spell damage charm up to a maximum level of 50 for you if you'd like. At this point I do not have the resources to do so, come back and see me later. ");
	}


	if($text=~/charm/i)
	{
		$client->Message($whisper_color, "You can give me your charm and I'll upgrade it. It will require 25 unspent AA points plus your old charm. It Looks like you have $AAPTS AA points right now. ");
	}

	if($text=~/now/i)
	{
		#$client->Message($whisper_color, "These are the availible charms:");
		
		# loop through item => reward array and send a list of items to client 
		foreach $id (sort keys %defiant_turnins)
		{
			my $item_link = quest::varlink($id);
			# SET STATIC COST
			#my $cost_link = quest::varlink($defiant_turnins{$id}{"cost"});
			my $reward_link = quest::varlink($defiant_turnins{$id}{"reward"});

			#$client->Message($whisper_color, "$item_link + 25 AA Points for $reward_link")
		}
	}
}

sub EVENT_ITEM {
my $AAPTZ = $client->GetAAPoints();
	# used to determine if anything needs handed back
	my $gaveitem = 0;
	

	# loop through 2nd item => reward array looking for a match
	if ($client->GetAAPoints() > 49)
	{
	foreach $item_id (sort keys %defiant_turnins)
	{
		$cost = $defiant_turnins{$item_id}{"cost"};
		$reward = $defiant_turnins{$item_id}{"reward"};

		# hand out the goods on a match of item + cost
		if (plugin::check_handin(\%itemcount, $item_id => 1))
		{
			$gaveitem = 1;

			quest::emote(" channels arcane energy into the charm to create a more powerful charm.");
			  $client->SetAAPoints($client->GetAAPoints() - 25);
			quest::summonitem($reward);
			quest::shout2("$name has completed the charm upgrade quest and received the Rank $cost Charm!");
			quest::ding;
		}
	}
	}

	# if there were no matches, give back what was turned in
	if ($gaveitem == 0)
	{
		plugin::return_items(\%itemcount);
	}
}

