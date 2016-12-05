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
1119 => { "cost" => "3", "reward" => 1261}, #rank3
1261 => { "cost" => "4", "reward" => 1264}, #rank4
1264 => { "cost" => "5", "reward" => 1266}, #rank5
1266 => { "cost" => "6", "reward" => 1270}, #rank6
1270 => { "cost" => "7", "reward" => 1319}, #rank7
1319 => { "cost" => "8", "reward" => 1323}, #rank8
1323 => { "cost" => "9", "reward" => 1352}, #rank9
1352 => { "cost" => "10", "reward" => 1353}, #rank10
1353 => { "cost" => "11", "reward" => 1267}, #rank11
1267 => { "cost" => "12", "reward" => 1372}, #rank12
1372 => { "cost" => "13", "reward" => 1373}, #rank13
1373 => { "cost" => "14", "reward" => 1374}, #rank14
1374 => { "cost" => "15", "reward" => 1375}, #rank15
1375 => { "cost" => "16", "reward" => 1377}, #rank16
1377 => { "cost" => "17", "reward" => 1378}, #rank17
1378 => { "cost" => "18", "reward" => 1379}, #rank18
1379 => { "cost" => "19", "reward" => 1380}, #rank19
1380 => { "cost" => "20", "reward" => 1381}, #rank20
1381 => { "cost" => "21", "reward" => 1391}, #rank21
1391 => { "cost" => "22", "reward" => 1392}, #rank22
1392 => { "cost" => "23", "reward" => 1392}, #rank23
1392 => { "cost" => "24", "reward" => 1394}, #rank24
1394 => { "cost" => "25", "reward" => 1395}, #rank25
1395 => { "cost" => "26", "reward" => 1396}, #rank26
1396 => { "cost" => "27", "reward" => 1399}, #rank27
1399 => { "cost" => "28", "reward" => 1432}, #rank28
1432 => { "cost" => "29", "reward" => 1434}, #rank29
1434 => { "cost" => "30", "reward" => 1435}, #rank30
1435 => { "cost" => "31", "reward" => 1450}, #rank31
1450 => { "cost" => "32", "reward" => 1458}, #rank32
1458 => { "cost" => "33", "reward" => 1502}, #rank33
1502 => { "cost" => "34", "reward" => 1503}, #rank34
1503 => { "cost" => "35", "reward" => 1533}, #rank35
1533 => { "cost" => "36", "reward" => 1563}, #rank36
1563 => { "cost" => "37", "reward" => 1568}, #rank37
1568 => { "cost" => "38", "reward" => 1569}, #rank38
1569 => { "cost" => "39", "reward" => 1577}, #rank39
1577 => { "cost" => "40", "reward" => 1579}, #rank40
1579 => { "cost" => "41", "reward" => 1581}, #rank41
1581 => { "cost" => "42", "reward" => 1582}, #rank42
1582 => { "cost" => "43", "reward" => 1586}, #rank43
1586 => { "cost" => "44", "reward" => 1587}, #rank44
1587 => { "cost" => "45", "reward" => 1591}, #rank45
1591 => { "cost" => "46", "reward" => 1592}, #rank46
1592 => { "cost" => "47", "reward" => 1654}, #rank47
1654 => { "cost" => "48", "reward" => 1655}, #rank48
1655 => { "cost" => "49", "reward" => 1656}, #rank49
1656 => { "cost" => "50", "reward" => 1657}, #rank50
1657 => { "cost" => "51", "reward" => 1826}, #rank51
1826 => { "cost" => "52", "reward" => 1836}, #rank52
1836 => { "cost" => "53", "reward" => 1844}, #rank53
1844 => { "cost" => "54", "reward" => 1845}, #rank54
1845 => { "cost" => "55", "reward" => 1846}, #rank55
1846 => { "cost" => "56", "reward" => 1847}, #rank56
1847 => { "cost" => "57", "reward" => 1848}, #rank57
1848 => { "cost" => "58", "reward" => 1901}, #rank58
1901 => { "cost" => "59", "reward" => 1902}, #rank59
1902 => { "cost" => "60", "reward" => 1907}, #rank60
1907 => { "cost" => "61", "reward" => 2096}, #rank61
2096 => { "cost" => "62", "reward" => 2098}, #rank62
2098 => { "cost" => "63", "reward" => 2273}, #rank63
2273 => { "cost" => "64", "reward" => 2274}, #rank64
2274 => { "cost" => "65", "reward" => 2275}, #rank65
2275 => { "cost" => "66", "reward" => 2277}, #rank66
2277 => { "cost" => "67", "reward" => 2278}, #rank67
2278 => { "cost" => "68", "reward" => 2298}, #rank68
2298 => { "cost" => "69", "reward" => 2370} #rank69







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
		plugin::Whisper("Hello $uname. I can upgrade your [$charm] if you'd like. ");
	}


	if($text=~/charm/i)
	{
		$client->Message($whisper_color, "You can give me your charm and I'll upgrade it. It will require 35 unspent AA points plus your old charm. It Looks like you have $AAPTS AA points right now. ");
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

			#$client->Message($whisper_color, "$item_link + 35 AA Points for $reward_link")
		}
	}
}

sub EVENT_ITEM {
my $AAPTZ = $client->GetAAPoints();
	# used to determine if anything needs handed back
	my $gaveitem = 0;
	

	# loop through 2nd item => reward array looking for a match
	if ($client->GetAAPoints() > 34)
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
			  $client->SetAAPoints($client->GetAAPoints() - 35);
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

