#Crude Defiant Armor Quests

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
"Plate_Bracer" =>		50005,	#Crude Defiant Plate Bracer
"Plate_Gauntlets" =>		50005,	#Crude Defiant Plate Gauntlets
"Plate_Boots" =>		50007,	#Crude Defiant Plate Boots
"Plate_Helm" =>			50008,	#Crude Defiant Plate Helm
"Plate_Vambraces" =>		50009,	#Crude Defiant Plate Vambraces
"Plate_Greaves" =>		50010,	#Crude Defiant Plate Greaves
"Plate_Breastplate" =>		50011,	#Crude Defiant Breastplate

"Chain_Bracer" =>		50012,	#Crude Defiant Chain Bracer
"Chain_Gauntlets" =>		50013,	#Crude Defiant Chain Gauntlets
"Chain_Boots" =>		50014,	#Crude Defiant Chain Boots
"Chain_Helm" =>			50015,	#Crude Defiant Chain Coif
"Chain_Vambraces" =>		50016,	#Crude Defiant Chain Sleeves
"Chain_Greaves" =>		50017,	#Crude Defiant Chain Leggings
"Chain_Breastplate" =>		50018,	#Crude Defiant Chain Tunic

"Leather_Bracer" =>		50019,	#Crude Defiant Leather Bracer
"Leather_Gauntlets" =>		50020,	#Crude Defiant Leather Gloves
"Leather_Boots" =>		50021,	#Crude Defiant Leather Boots
"Leather_Helm" =>		50022,	#Crude Defiant Leather Cap
"Leather_Vambraces" =>		50023,	#Crude Defiant Leather Sleeves
"Leather_Greaves" =>		50024,	#Crude Defiant Leather Trousers
"Leather_Breastplate" =>	50025,	#Crude Defiant Leather Tunic

"Cloth_Bracer" =>		50026,	#Crude Defiant Cloth Wristwrap
"Cloth_Gauntlets" =>		50027,	#Crude Defiant Cloth Gloves
"Cloth_Boots" =>		50028,	#Crude Defiant Cloth Sandals
"Cloth_Helm" =>			50029,	#Crude Defiant Cloth Cap
"Cloth_Vambraces" =>		50030,	#Crude Defiant Cloth Sleeves
"Cloth_Greaves" =>		50031,	#Crude Defiant Cloth Pantaloons
"Cloth_Breastplate" =>		50032,	#Crude Defiant Cloth Robe
);
################################################

################################################
#
# MODIFY HERE
# 
# REQUIRED QUEST TURNINS
#
################################################
my $chest_turnin =	20110;		#ruined gnoll chain coat(+Blackburrow Spawn) 
my $leg_turnin =	20117;		#ruined pants( +Blackburrow Spawn) 
my $arm_turnin =	20112;		#ruined sleeves (+Blackburrow Spawn) 
my $boot_turnin =	20118;		#ruined 20118 (+Blackburrow Spawn) 
my $helm_turnin =	20109;		#ruined Coif (+Blackburrow Spawn) 
my $hand_turnin =	20114;		#ruined Gloves (+Blackburrow Spawn) 
my $bracer_turnin =	20113;		#ruined Bracelet (+Blackburrow Spawn) 
my $cost =		1264;	#Electrum Bar (bought)
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

if($ulevel >= 1)
{
	if($text=~/hail/i)
	{
		plugin::Whisper("Ahh, $name, It's very nice to see you!  are you ready for some new $ArmorType [$armor].  I am able to call upon the power of Prexxus to transmute specific lesser items into something more befitting a $class of your experience.  The items I require can be found in the Blackburrow lair.  I will also need a $chipped_emerald for each piece which I will fuse together with your item.");
	}

	if($text=~/armor/i)
	{
		plugin::Whisper("I can enhance armor for [$chest], [$legs], [$arms], [$head], [$feet], [$hands], and [$wrists].");
	}

	if($text=~/chest/i)
	{
		plugin::Whisper("You will need to bring me a $chest_template and a $chipped_emerald so I can create a $Breastplate_Link for you.");
	}

	if($text=~/legs/i)
	{
		plugin::Whisper("You will need to bring me a $leg_template and a $chipped_emerald so I can create a $Greaves_Link for you.");
	}
	
	if($text=~/arms/i)
	{
		plugin::Whisper("You will need to bring me a $arm_template and a $chipped_emerald so I can create a $Vambraces_Link for you.");
	}
	
	if($text=~/head/i)
	{
		plugin::Whisper("You will need to bring me a $helm_template and a $chipped_emerald so I can create a $Helm_Link for you.");
	}
	
	if($text=~/feet/i)
	{
		plugin::Whisper("You will need to bring me a $boot_template and a $chipped_emerald so I can create a $Boots_Link for you.");
	}
	
	if($text=~/hands/i)
	{
		plugin::Whisper("You will need to bring me a $hand_template and a $chipped_emerald so I can create a $Gauntlets_Link for you.");
	}
	
	if($text=~/wrists/i)
	{
		plugin::Whisper("You will need to bring me a $bracer_template and a $chipped_emerald so I can create a $Bracer_Link for you.");
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

if ($ulevel >= 1)
{
	#Reward for turning in the Bracer piece
	if (plugin::check_handin(\%itemcount, $bracer_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Bracer});
		quest::exp(450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Gauntlets piece
	if (plugin::check_handin(\%itemcount, $hand_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Gauntlets});
		quest::exp(450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Boots piece
	if (plugin::check_handin(\%itemcount, $boot_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Boots});
		quest::exp(450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Helm piece
	if (plugin::check_handin(\%itemcount, $helm_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Helm});
		quest::exp(450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Vambraces piece
	if (plugin::check_handin(\%itemcount, $arm_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Vambraces});
		quest::exp(450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Greaves piece
	if (plugin::check_handin(\%itemcount, $leg_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Greaves});
		quest::exp(450);
		plugin::Whisper ("Your item is ready, $name.");
	}

	#Reward for turning in the Breastplate piece
	if (plugin::check_handin(\%itemcount, $chest_turnin => 1, $cost => 1)) {
		quest::emote(" uses her Druidic powers to fuse the items together.");
		quest::summonitem($Rewards{$Breastplate});
		quest::exp(450);
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