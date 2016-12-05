#
# Simple & Scalable
# Array + hash based quest template
#
# Valdaun  10/23/2009
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
#
my $rare_cost = 1319;	# blue diamond (dropped)
my $mid_cost = 1264;	# fire opal (bought)

################################################
#
# Arrays containing the item to turnin as the array index,
# which points to a cost & reward hash which will be looped
# through later in the say and handin sections.
#
my %fabled_turnins = (
	5401 => { "cost" => $rare_cost, "reward" => 68259 },	#Mithril 2 hander & fabled
	5403 => { "cost" => $rare_cost, "reward" => 68260 },	#Ghoulbane & fabled
	5500 => { "cost" => $rare_cost, "reward" => 68263 },	#SS of Ykesha & fabled
	5412 => { "cost" => $rare_cost, "reward" => 68262 },	#Razing Sword of Skarlon & fabled
	6795 => { "cost" => $rare_cost, "reward" => 34058 },	#Smiters Girdle & fabled
	10107 => { "cost" => $rare_cost, "reward" => 68275},	#batskull ear & fabled
	10314 => { "cost" => $rare_cost, "reward" => 68278 },	#PBB  & fabled
	7094 => { "cost" => $rare_cost, "reward" => 34062 },	#ear of the blind wolf & fabled
	7167 => { "cost" => $rare_cost, "reward" => 34066 },	#cloak of blind wolf& fabled
	10727 => { "cost" => $rare_cost, "reward" => 34076 },	#yelloweyes collar & fabled
	17005 => { "cost" => $mid_cost, "reward" => 34079 },	#backpack & fabled
	26846 => { "cost" => $rare_cost, "reward" => 34083},	#fist of iron & fabled
	13942 => { "cost" => $rare_cost, "reward" => 68284 },	#dragon dirk & fabled
	10404 => { "cost" => $rare_cost, "reward" => 68281 },	#gbs & fabled
	6612 => { "cost" => $rare_cost, "reward" => 82731 },	#jademace& fabled
	4407 => { "cost" => $rare_cost, "reward" => 68254 },	#geb & fabled
	5360 => { "cost" => $rare_cost, "reward" => 68258},	#pgt & fabled
	1320 => { "cost" => $rare_cost, "reward" => 68232 },	#fbr & fabled
	1357 => { "cost" => $rare_cost, "reward" => 68233},	#ish & fabled
	1365 => { "cost" => $rare_cost, "reward" => 68234},	#fbss& fabled
	2340 => { "cost" => $rare_cost, "reward" => 68240},	# molten cloak & fabled
	5407 => { "cost" => $rare_cost, "reward" => 68261},	#exe axe & fabled
	10047 => { "cost" => $rare_cost, "reward" => 82742}	#Smiters Girdle & fabled
);

my %defiant_turnins = (
	8003 => { "cost" => $mid_cost, "reward" => 50550 },	#Longbow & Rough Defiant Bow
	9004 => { "cost" => $mid_cost, "reward" => 50551 },	#Kite Shield & Rough Def. Chitin Shield (tank)
	5006 => { "cost" => $mid_cost, "reward" => 50549 },	#Halberd & R.D. Halberd
	6006 => { "cost" => $mid_cost, "reward" => 50540 },	#Warhammer & R.D. Hammer
	8007 => { "cost" => $mid_cost, "reward" => 50546 },	#Shuriken & R.D. Knuckle Dusters
	5002 => { "cost" => $mid_cost, "reward" => 50543 },	#Long Sword & R.D. Longsword
	9002 => { "cost" => $mid_cost, "reward" => 50552 },	#Round Shield & R.D. Round Shield (priest)
	7002 => { "cost" => $mid_cost, "reward" => 50544 },	#Rapier & R.D. Stone Dagger (rog)
	7001 => { "cost" => $mid_cost, "reward" => 50545 },	#Dagger & R.D. Serrated Dagger (caster)
	5001 => { "cost" => $mid_cost, "reward" => 50542 },	#Short Sword & R.D. Short Sword
	6003 => { "cost" => $mid_cost, "reward" => 50541 },	#Mace & R.D. Scepter (priest)
	6012 => { "cost" => $mid_cost, "reward" => 50547 },	#Worn Great Staff & R.D. Spiked Staff (2hb)
	7003 => { "cost" => $mid_cost, "reward" => 50548 }	#Spear & R.D. Trident (2hp)
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
my $exp_big = 5000000;	# 1 yellow bar of AA
my $exp_mid = 50000;	# 1-4 worth of exp, slows down fast 6+

################################################
#
#######    END VARIABLE MODS     ###############
# 
################################################

sub EVENT_SAY {

################################################
#
#  Conversation navigation links for say section
#
my $fabled = quest::saylink("fabled");
my $defiant = quest::saylink("defiant");
my $looking_for = quest::saylink("looking for");
my $trade_for = quest::saylink("trade for");

	if($text=~/hail/i)
	{
		plugin::Whisper("My friend $name, come talk to me for a minute.  I have been perfecting a technique to trasmute normal items into [$fabled] and [$defiant] items
				of yore. ");
	}

	if($text=~/fabled/i)
	{
		$client->Message($whisper_color, "I will transmute your weapons if you can bring the the items I am [$looking_for]?");
	}

	if($text=~/looking for/i)
	{
		$client->Message($whisper_color, "At this time, I am able to transmute the following 
				weapons into their fabled counterparts:");

		# loop through item => reward array and send a list of items to client 
		foreach $id (sort keys %fabled_turnins)
		{
			my $item_link = quest::varlink($id);
			my $cost_link = quest::varlink($fabled_turnins{$id}{"cost"});
			my $reward_link = quest::varlink($fabled_turnins{$id}{"reward"});

			$client->Message($whisper_color, "$item_link + $cost_link turn into $reward_link")
		}
	}

	if($text=~/defiant/i)
	{
		$client->Message($whisper_color, "I can help you with defiant weapons, would you like to see what I have to [$trade_for]?");
	}

	if($text=~/trade for/i)
	{
		$client->Message($whisper_color, "At this time, I am able to make the following trades.  
				Most of these basic weapons are found on city merchants.");
		
		# loop through item => reward array and send a list of items to client 
		foreach $id (sort keys %defiant_turnins)
		{
			my $item_link = quest::varlink($id);
			my $cost_link = quest::varlink($defiant_turnins{$id}{"cost"});
			my $reward_link = quest::varlink($defiant_turnins{$id}{"reward"});

			$client->Message($whisper_color, "$item_link + $cost_link for $reward_link")
		}
	}
}

sub EVENT_ITEM {

	# used to determine if anything needs handed back
	my $gaveitem = 0;

	# loop through item => reward array looking for a match
	foreach $item_id (sort keys %fabled_turnins)
	{
		$cost = $fabled_turnins{$item_id}{"cost"};
		$reward = $fabled_turnins{$item_id}{"reward"};

		# hand out the goods on a match of item + cost
		if (plugin::check_handin(\%itemcount, $item_id => 1, $cost => 1))
		{
			$gaveitem = 1;

			quest::emote(" uses the power of the people to grant you whats yours!");
			quest::summonitem($reward);
			quest::ding;

			# this lets us grant a meaningful exp reward 
			# without giving a dozen+ levels worth at level 1
			if ($ulevel > 39)
			{
				quest::exp($exp_big);
			}

			else
			{
				quest::exp($exp_mid);
			}
		}
	}

	# loop through 2nd item => reward array looking for a match
	foreach $item_id (sort keys %defiant_turnins)
	{
		$cost = $defiant_turnins{$item_id}{"cost"};
		$reward = $defiant_turnins{$item_id}{"reward"};

		# hand out the goods on a match of item + cost
		if (plugin::check_handin(\%itemcount, $item_id => 1, $cost => 1))
		{
			$gaveitem = 1;

			quest::emote(" uses the power of the people to grant you whats yours!");
			quest::summonitem($reward);
			quest::exp(50000);
			quest::ding;
		}
	}

	# if there were no matches, give back what was turned in
	if ($gaveitem == 0)
	{
		plugin::return_items(\%itemcount);
	}
}