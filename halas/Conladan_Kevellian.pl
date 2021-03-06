# Halas rogue quest armor
#

sub EVENT_SAY {
  if (($text=~/hail/i) && ($class eq "Rogue")) {
    plugin::Whisper("The Order of the White Rose welcomes you, young rogue. Have you come to begin your [training]?");
  }
  if ($text=~/training/i) {
    plugin::Whisper("I recommend that all starting rogues complete my training and craft a set of [armor] to help them in their perilous adventures that lie ahead.");
  }
if($text=~/I need a Mammoth Hide Parchment/i)
	{
	plugin::Whisper("Here you go.");
	quest::summonitem(12621);
	}
  if ($text=~/armor/i) {
    plugin::Whisper("It is a set of armor worn only by the White Rose rogues of Halas. It will serve you well for a good period of time in your beginning adventures. Take this White Rose Assembly Kit. You will use it to craft the various pieces of your White Rose armor. When you combine components in your kit, make sure they are un-stacked. Simply tell me what piece you would like to craft first, and I will give you instructions. The different pieces are [cap], [bracers], [sleeves], [boots], [leggings], [gloves], and [tunic].");
    quest::summonitem(55163);
  }
  if ($text=~/cap/i) {
    plugin::Whisper("A cap is a good choice to start with. Once created, it will provide you with protection and serve to conceal your face from local authorities if that need arises. To craft your Cap of the White Rose, you will need two Spiderling Silks, two Bone Chips, and one Gnoll Pup Scalp. You should be able to find these items by hunting in Everfrost. Once you have combined these items in your Assembly Kit, take the White Rose Cap Material to a loom along with this pattern to create your new cap.");
    quest::summonitem(55156);
  }
  if ($text=~/bracers/i) {
    plugin::Whisper("Look for the following items in Everfrost to create a Bracer of the White Rose: one Polar Bear Skin, two Spiderling Legs, and three Bone Chips. Once you have combined these items in your Assembly Kit, take the White Rose Bracer Material to a loom along with this pattern to create your new bracer.");
    quest::summonitem(55157);
  }
  if ($text=~/sleeves/i) {
    plugin::Whisper("If Sleeves of the White Rose are what you wish to craft, you will need to collect two Spiderling Silks, two Spiderling Legs, and one Ruined Wolf Pelt. Once you have combined these items in your Assembly Kit, take the White Rose Sleeves Material to a loom along with this pattern to create your new sleeves.");
    quest::summonitem(55158);
  }
  if ($text=~/boots/i) {
    plugin::Whisper("Boots of the White Rose will serve you well in the harsh tundra. You cannot make a very fast escape from danger with feet that have suffered frostbite, now can ya?! To create your boots, venture into Everfrost and collect two Spiderling Legs, two Ruined Wolf Pelts, and one Bone Chip. Once you have combined these items in your Assembly Kit, take the White Rose Boots Material to a loom along with this pattern to create your new boots.");
    quest::summonitem(55159);
  }
  if ($text=~/leggings/i) {
    plugin::Whisper("Leggings of the White Rose are a bit more complex to craft than some of the other pieces of your armor. However if you feel you are ready for this task, go to Everfrost and collect one Patch of Gnoll Fur, one Spider Venom Sack, one Goblin Ice Necklace, and two Ruined Wolf Pelts. Once you have combined these items in your Assembly Kit, take the White Rose Leggings Material to a loom along with this pattern to create your new leggings.");
    quest::summonitem(55160);
  }
  if ($text=~/gloves/i) {
    plugin::Whisper("Gloves of the White Rose are a very important part of your armor. These special gloves will protect your hands, yet at the same time be flexible enough for you to pick even the most delicate of locks. To create your gloves, go to Everfrost and collect four Spiderling Silks, one Bone Chip, and one Ruined Wolf Pelt. Once you have combined these items in your Assembly Kit, take the White Rose Gloves Material to a loom along with this pattern and create your new gloves.");
    quest::summonitem(55161);
  }
  if ($text=~/tunic/i) {
    plugin::Whisper("The most important part of your White Rose Armor ensemble; the Tunic of the White Rose. This very important part of your armor can be assembled by collecting one Ruined Wolf Pelt, three Patches of Gnoll Fur, one Spiderling Silk, and one Perfect Gnoll Skin. You might have to journey to Blackburrow to find the gnoll skin. Once you have combined these items in your Assembly Kit, take the White Rose Tunic Material to a loom along with this pattern and create your new tunic. Once you have completed your tunic, I have another [job] for you if you are looking for adventure.");
    quest::summonitem(55162);
  }
  if ($text=~/job/i) {
    plugin::Whisper("The Gnolls of Blackburrow have long been a thorn in our side. If you could venture to Blackburrow and kill some of these gnolls and then bring me [proof] of your victory, I could part with a nice dagger I have.");
  }
  if ($text=~/proof/i) {
    plugin::Whisper("Bring me one Gnoll Ulna, one Gnoll Pelvis, one Severed Gnoll Foot, and one High Quality Gnoll Fur. Do so and you shall be rewarded. Good luck to you, $name.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 20181 => 1, 27424 => 1, 27409 => 1, 27427 => 1)) {
    plugin::Whisper("I must say, $name, I am impressed. You have passed your training and should now have a full set of armor to begin your adventures. Take this weapon as a symbol of your dedication and hard work. You have earned it. Your training with me has ended. Farewell.");
    quest::summonitem(55148);
    quest::faction(275,30);
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

# EOF zone: halas ID: 29080 NPC: Conladan_Kevellian

