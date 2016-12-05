#Rough Defiant Armor Quests

%GetArmorType = (	#Convert each Class Name into an Armor Type Name
	"Warrior" => "Plate",
	"Rogue" => "Chain",
	"Monk" => "Leather",
	"Berserker" => "Chain",
	"Shadowknight" => "Plate",
	"Paladin" => "Plate",
	"Ranger" => "Chain",
	"Bard" => "Plate",
	"Beastlord" => "Leather",
	"Cleric" => "Plate",
	"Druid" => "Leather",
	"Shaman" => "Chain",
	"Wizard" => "Cloth",
	"Magician" => "Cloth",
	"Enchanter" => "Cloth",
	"Necromancer" => "Cloth"
);

%ArmorSlot = (	#Convert each Slot Name into a String for use in the Rewards Choosing
	"Bracer" => "_Bracer",
	"Gauntlets" => "_Gauntlets",
	"Boots" => "_Boots",
	"Helm" => "_Helm",
	"Vambraces" => "_Vambraces",
	"Greaves" => "_Greaves",
	"Breastplate" => "_Breastplate",
);

################################################
#
# MODIFY HERE
# 
# QUEST REWARDS
#
################################################
%Rewards = (	#Name each item appropriately for use With the Armor Type And Armor Slot selections
"Plate_Bracer" =>		50061,	#Rough Defiant Plate Bracer
"Plate_Gauntlets" =>		50062,	#Rough Defiant Plate Gauntlets
"Plate_Boots" =>		50063,	#Rough Defiant Plate Boots
"Plate_Helm" =>			50064,	#Rough Defiant Plate Helm
"Plate_Vambraces" =>		50065,	#Rough Defiant Plate Vambraces
"Plate_Greaves" =>		50066,	#Rough Defiant Plate Greaves
"Plate_Breastplate" =>		50067,	#Rough Defiant Breastplate

"Chain_Bracer" =>		50068,	#Rough Defiant Chain Bracer
"Chain_Gauntlets" =>		50069,	#Rough Defiant Chain Gauntlets
"Chain_Boots" =>		50070,	#Rough Defiant Chain Boots
"Chain_Helm" =>			50071,	#Rough Defiant Chain Coif
"Chain_Vambraces" =>		50072,	#Rough Defiant Chain Sleeves
"Chain_Greaves" =>		50073,	#Rough Defiant Chain Leggings
"Chain_Breastplate" =>		50074,	#Rough Defiant Chain Tunic

"Leather_Bracer" =>		50075,	#Rough Defiant Leather Bracer
"Leather_Gauntlets" =>		50076,	#Rough Defiant Leather Gloves
"Leather_Boots" =>		50077,	#Rough Defiant Leather Boots
"Leather_Helm" =>		50078,	#Rough Defiant Leather Cap
"Leather_Vambraces" =>		50079,	#Rough Defiant Leather Sleeves
"Leather_Greaves" =>		50080,	#Rough Defiant Leather Trousers
"Leather_Breastplate" =>	50081,	#Rough Defiant Leather Tunic

"Cloth_Bracer" =>		50082,	#Rough Defiant Cloth Wristwrap
"Cloth_Gauntlets" =>		50083,	#Rough Defiant Cloth Gloves
"Cloth_Boots" =>		50084,	#Rough Defiant Cloth Sandals
"Cloth_Helm" =>			50085,	#Rough Defiant Cloth Cap
"Cloth_Vambraces" =>		50086,	#Rough Defiant Cloth Sleeves
"Cloth_Greaves" =>		50087,	#Rough Defiant Cloth Pantaloons
"Cloth_Breastplate" =>		50088,	#Rough Defiant Cloth Robe
);
################################################

################################################
#
# MODIFY HERE
# 
# REQUIRED QUEST TURNINS
#
################################################
my $chest_turnin =	1436;		#Long Lost chest
my $leg_turnin =	1441;		#Long Lost Legs
my $arm_turnin =	1439;		#LL sleeves
my $boot_turnin =	1442;		#LL boots
my $helm_turnin =	1435;		#CLL helm
my $hand_turnin =	1443;		#LL gloves
my $bracer_turnin =	1440;		#LL bracer
my $cost =		1323;	#High Level WOrk order Token (Bought)
################################################

sub EVENT_SAY {

my $armor = quest::saylink("armor");
my $chest = quest::saylink("chest");
my $legs = quest::saylink("legs");
my $arms = quest::saylink("arms");
my $head = quest::saylink("head");
my $feet = quest::saylink("feet");
my $hands = quest::saylink("hands");
my $wrists = quest::saylink("wrists");

# Get the Armor Type of the Character character currently speaking With this NPC
my $ArmorType = $GetArmorType{$class};

#Create the full name of each item for the Rewards array
my $Bracer = "$ArmorType$ArmorSlot{Bracer}";
my $Gauntlets = "$ArmorType$ArmorSlot{Gauntlets}";
my $Boots = "$ArmorType$ArmorSlot{Boots}";
my $Helm = "$ArmorType$ArmorSlot{Helm}";
my $Vambraces = "$ArmorType$ArmorSlot{Vambraces}";
my $Greaves = "$ArmorType$ArmorSlot{Greaves}";
my $Breastplate = "$ArmorType$ArmorSlot{Breastplate}";

#Create the Item Links from the Rewards Array for use in say messages
my $Bracer_Link = quest::varlink($Rewards{$Bracer});
my $Gauntlets_Link = quest::varlink($Rewards{$Gauntlets});
my $Boots_Link = quest::varlink($Rewards{$Boots});
my $Helm_Link = quest::varlink($Rewards{$Helm});
my $Vambraces_Link = quest::varlink($Rewards{$Vambraces});
my $Greaves_Link = quest::varlink($Rewards{$Greaves});
my $Breastplate_Link = quest::varlink($Rewards{$Breastplate});

#Create the required quest turnin item links for use in say messages
my $chest_template = quest::varlink($chest_turnin);
my $leg_template = quest::varlink($leg_turnin);
my $arm_template = quest::varlink($arm_turnin);
my $boot_template = quest::varlink($boot_turnin);
my $helm_template = quest::varlink($helm_turnin);
my $hand_template = quest::varlink($hand_turnin);
my $bracer_template = quest::varlink($bracer_turnin);
my $chipped_emerald = quest::varlink($cost);

if($ulevel > 29)
{
	if($text=~/hail/i)
	{
		plugin::Whisper("Ahh, $name, I am glad you stopped by!  It seems to
me you are now ready for some new $ArmorType [$armor].  I am able to call
upon the power of Tunare to transmute specific lesser items into something
more befitting a $class of your stature.  The items I require can be found in
Karnor's Keep.  I will also need a $chipped_emerald for each
piece which I will fuse together with your item.");
	}

	if($text=~/armor/i)
	{
		plugin::Whisper("I can enhance armor for [$chest], [$legs], [$arms], [$head], [$feet], [$hands], and [$wrists].");
	}

	if($text=~/chest/i)
	{
		plugin::Whisper("You will need to bring me a $chest_template from Nagafen's lair and a $chipped_emerald so I can create a $Breastplate_Link for you.");
	}

	if($text=~/legs/i)
	{
		plugin::Whisper("You will need to bring me a $leg_template from Lower Guk and a $chipped_emerald so I can create a $Greaves_Link for you.");
	}
	
	if($text=~/arms/i)
	{
		plugin::Whisper("You will need to bring me a $arm_template from Lower Guk and a $chipped_emerald so I can create a $Vambraces_Link for you.");
	}
	
	if($text=~/head/i)
	{
		plugin::Whisper("You will need to bring me a $helm_template from Nagafen's lairand a $chipped_emerald so I can create a $Helm_Link for you.");
	}
	
	if($text=~/feet/i)
	{
		plugin::Whisper("You will need to bring me a $boot_template from Nagafen's lairand a $chipped_emerald so I can create a $Boots_Link for you.");
	}
	
	if($text=~/hands/i)
	{
		plugin::Whisper("You will need to bring me a $hand_template from Lower Guk and a $chipped_emerald so I can create a $Gauntlets_Link for you.");
	}
	
	if($text=~/wrists/i)
	{
		plugin::Whisper("You will need to bring me a $bracer_template from Nagafen's lairand a $chipped_emerald so I can create a $Bracer_Link for you.");
	}
}

else
{
	if($text=~/hail/i)
	{
		plugin::Whisper("Hi there, $name.  I'm afraid the quests I have for
you are a little too dangerous at this time.  Please stop by again after you
have gained some more experience.");
	}
}	
}

sub EVENT_ITEM {

# Get the Armor Type of the Character character currently speaking With this NPC
my $ArmorType = $GetArmorType{$class};

#Create the full name of each item for the Rewards array
my $Bracer = "$ArmorType$ArmorSlot{Bracer}";
my $Gauntlets = "$ArmorType$ArmorSlot{Gauntlets}";
my $Boots = "$ArmorType$ArmorSlot{Boots}";
my $Helm = "$ArmorType$ArmorSlot{Helm}";
my $Vambraces = "$ArmorType$ArmorSlot{Vambraces}";
my $Greaves = "$ArmorType$ArmorSlot{Greaves}";
my $Breastplate = "$ArmorType$ArmorSlot{Breastplate}";

if ($ulevel > 29)
{
	#Reward for turning in the Bracer piece
	if (plugin::check_handin(\%itemcount, $bracer_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Bracer});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Gauntlets piece
	if (plugin::check_handin(\%itemcount, $hand_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Gauntlets});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Boots piece
	if (plugin::check_handin(\%itemcount, $boot_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Boots});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Helm piece
	if (plugin::check_handin(\%itemcount, $helm_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Helm});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Vambraces piece
	if (plugin::check_handin(\%itemcount, $arm_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Vambraces});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Greaves piece
	if (plugin::check_handin(\%itemcount, $leg_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Greaves});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Breastplate piece
	if (plugin::check_handin(\%itemcount, $chest_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Armorcrafting powers to fuse the items together.");
		quest::summonitem($Rewards{$Breastplate});
		quest::exp(51450);
		plugin::Whisper ("Your item is ready, $name.");
	}
	
	else
	{
		plugin::return_items(\%itemcount);
	}
}
else
{
	plugin::return_items(\%itemcount);
}

}