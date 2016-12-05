sub EVENT_SAY
{
	if($text=~/hail/i)
		{
		plugin::Whisper("Greetings $name! Nice to meet you. I've started up a complimentary bag check service. Feel free to give me your weight reducing bag, and I'll give you a token in return. When you would like to get your bag back, simply return to me with your token.");
		}
}

sub EVENT_ITEM
#Order for Items is
#Bag
#Token
#
#
#
#All of the Bags did not exist in the database
#Also some of the bags did not have tokens for them
#And some of the tokens did have have bags for them
#The item turn ins are in alpha-numeric order
{
  if (plugin::check_handin(\%itemcount, 33233 => 1)) { #Ambleshifts Amazing Automated Amalgamator
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(93665);
  }
  elsif (plugin::check_handin(\%itemcount, 93665 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(33233);
  }
  elsif (plugin::check_handin(\%itemcount, 93450 => 1)) { #Anizok's Bait Dispenser
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(93668);
  }
  elsif (plugin::check_handin(\%itemcount, 93668 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(93450);
  }
  elsif (plugin::check_handin(\%itemcount, 92871 => 1)) { #Antonican Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56873);
  }
  elsif (plugin::check_handin(\%itemcount, 56873 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92871);
  }
  elsif (plugin::check_handin(\%itemcount, 17405 => 1)) { #Archeologist Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56852);
  }
  elsif (plugin::check_handin(\%itemcount, 56852 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17405);
  }
  elsif (plugin::check_handin(\%itemcount, 17354 => 1)) { #Bag of Sewn Evil-Eye
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56843);
  }
  elsif (plugin::check_handin(\%itemcount, 56843 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17354);
  }
  elsif (plugin::check_handin(\%itemcount, 17403 => 1)) { #Bag of the Tinkerers
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56850);
  }
  elsif (plugin::check_handin(\%itemcount, 56850 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17403);
  }
  elsif (plugin::check_handin(\%itemcount, 17071 => 1)) { #Beetle Box
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56805);
  }
  elsif (plugin::check_handin(\%itemcount, 56805 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17071);
  }
  elsif (plugin::check_handin(\%itemcount, 63819 => 1)) { #Bolstered Cragbeast Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51522);
  }
  elsif (plugin::check_handin(\%itemcount, 51522 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63819);
  }
  elsif (plugin::check_handin(\%itemcount, 63820 => 1)) { #Bolstered Cragbeast Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51523);
  }
  elsif (plugin::check_handin(\%itemcount, 51523 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63820);
  }
  elsif (plugin::check_handin(\%itemcount, 63821 => 1)) { #Bolstered Cragbeast Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51524);
  }
  elsif (plugin::check_handin(\%itemcount, 51524 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63821);
  }
  elsif (plugin::check_handin(\%itemcount, 63822 => 1)) { #Bolstered Cragbeast Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51525);
  }
  elsif (plugin::check_handin(\%itemcount, 51525 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63822);
  }
  elsif (plugin::check_handin(\%itemcount, 63807 => 1)) { #Bolstered Hynid-Hide Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51514);
  }
  elsif (plugin::check_handin(\%itemcount, 51514 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63807);
  }
  elsif (plugin::check_handin(\%itemcount, 63808 => 1)) { #Bolstered Hynid-Hide Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51515);
  }
  elsif (plugin::check_handin(\%itemcount, 51515 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63808);
  }
  elsif (plugin::check_handin(\%itemcount, 63809 => 1)) { #Bolstered Hynid-Hide Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51516);
  }
  elsif (plugin::check_handin(\%itemcount, 51516 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63809);
  }
  elsif (plugin::check_handin(\%itemcount, 63810 => 1)) { #Bolstered Hynid-Hide Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51517);
  }
  elsif (plugin::check_handin(\%itemcount, 51517 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63810);
  }
  elsif (plugin::check_handin(\%itemcount, 17798 => 1)) { #Bonecollector's Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56860);
  }
  elsif (plugin::check_handin(\%itemcount, 56860 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17798);
  }
  elsif (plugin::check_handin(\%itemcount, 17799 => 1)) { #Bottomless Box
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56861);
  }
  elsif (plugin::check_handin(\%itemcount, 56861 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17799);
  }
  elsif (plugin::check_handin(\%itemcount, 11703 => 1)) { #Box of Abu-Kar
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56800);
  }
  elsif (plugin::check_handin(\%itemcount, 56800 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(11703);
  }
  elsif (plugin::check_handin(\%itemcount, 17082 => 1)) { #Box of Nil Space
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56808);
  }
  elsif (plugin::check_handin(\%itemcount, 56808 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17082);
  }
  elsif (plugin::check_handin(\%itemcount, 92877 => 1)) { #Clockwork Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56879);
  }
  elsif (plugin::check_handin(\%itemcount, 56879 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92877);
  }
  elsif (plugin::check_handin(\%itemcount, 63811 => 1)) { #Cragbeast Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51518);
  }
  elsif (plugin::check_handin(\%itemcount, 51518 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63811);
  }
  elsif (plugin::check_handin(\%itemcount, 63812 => 1)) { #Cragbeast Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51519);
  }
  elsif (plugin::check_handin(\%itemcount, 51519 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63812);
  }
  elsif (plugin::check_handin(\%itemcount, 63814 => 1)) { #Cragbeast Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51521);
  }
  elsif (plugin::check_handin(\%itemcount, 51521 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63814);
  }
  elsif (plugin::check_handin(\%itemcount, 17157 => 1)) { #Crude Fur Bandolier
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56824);
  }
  elsif (plugin::check_handin(\%itemcount, 56824 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17157);
  }
  elsif (plugin::check_handin(\%itemcount, 17201 => 1)) { #Dakoit Coin Purse
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56826);
  }
  elsif (plugin::check_handin(\%itemcount, 56826 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17201);
  }
  elsif (plugin::check_handin(\%itemcount, 17703 => 1)) { #Darkwood Trunk
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56857);
  }
  elsif (plugin::check_handin(\%itemcount, 56857 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17703);
  }
  elsif (plugin::check_handin(\%itemcount, 17966 => 1)) { #Deluxe Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51537);
  }
  elsif (plugin::check_handin(\%itemcount, 51537 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17966);
  }
  elsif (plugin::check_handin(\%itemcount, 17406 => 1)) { #Driftwood Treasure Chest
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56853);
  }
  elsif (plugin::check_handin(\%itemcount, 56853 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17406);
  }
  elsif (plugin::check_handin(\%itemcount, 17081 => 1)) { #Dusty Ransacker's Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56807);
  }
  elsif (plugin::check_handin(\%itemcount, 56807 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17081);
  }
  elsif (plugin::check_handin(\%itemcount, 17806 => 1)) { #Erudite Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51538);
  }
  elsif (plugin::check_handin(\%itemcount, 51538 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17806);
  }
  elsif (plugin::check_handin(\%itemcount, 92873 => 1)) { #Erudite Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56875);
  }
  elsif (plugin::check_handin(\%itemcount, 56875 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92873);
  }
  elsif (plugin::check_handin(\%itemcount, 17241 => 1)) { #Feather Lined Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56834);
  }
  elsif (plugin::check_handin(\%itemcount, 56834 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17241);
  }
  elsif (plugin::check_handin(\%itemcount, 17587 => 1)) { #Feather Lined Box
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56854);
  }
  elsif (plugin::check_handin(\%itemcount, 56854 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17587);
  }
  elsif (plugin::check_handin(\%itemcount, 17813 => 1)) { #Fier`Dal Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56876);
  }
  elsif (plugin::check_handin(\%itemcount, 56876 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17813);
  }
  elsif (plugin::check_handin(\%itemcount, 17105 => 1)) { #Fine Xakra Runed Jar
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56813);
  }
  elsif (plugin::check_handin(\%itemcount, 56813 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17105);
  }
  elsif (plugin::check_handin(\%itemcount, 17327 => 1)) { #Fleeting Quiver
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56839);
  }
  elsif (plugin::check_handin(\%itemcount, 56839 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17327);
  }
  elsif (plugin::check_handin(\%itemcount, 17213 => 1)) { #Gem Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56832);
  }
  elsif (plugin::check_handin(\%itemcount, 56832 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17213);
  }
  elsif (plugin::check_handin(\%itemcount, 92868 => 1)) { #Guktan Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56870);
  }
  elsif (plugin::check_handin(\%itemcount, 56870 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92868);
  }
  elsif (plugin::check_handin(\%itemcount, 92870 => 1)) { #Half Elf Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56872);
  }
  elsif (plugin::check_handin(\%itemcount, 56872 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92870);
  }
  elsif (plugin::check_handin(\%itemcount, 17969 => 1)) { #Hand Made Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56863);
  }
  elsif (plugin::check_handin(\%itemcount, 56863 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17969);
  }
  elsif (plugin::check_handin(\%itemcount, 17358 => 1)) { #Herbalist Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56845);
  }
  elsif (plugin::check_handin(\%itemcount, 56845 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17358);
  }
  elsif (plugin::check_handin(\%itemcount, 63799 => 1)) { #Hynid-Hide Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51510);
  }
  elsif (plugin::check_handin(\%itemcount, 51510 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63799);
  }
  elsif (plugin::check_handin(\%itemcount, 63800 => 1)) { #hynid-Hide Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51511);
  }
  elsif (plugin::check_handin(\%itemcount, 51511 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63800);
  }
  elsif (plugin::check_handin(\%itemcount, 63801 => 1)) { #Hynid-Hide Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51512);
  }
  elsif (plugin::check_handin(\%itemcount, 51512 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63801);
  }
  elsif (plugin::check_handin(\%itemcount, 63802 => 1)) { #Hynid-Hide Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51513);
  }
  elsif (plugin::check_handin(\%itemcount, 51513 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63802);
  }
  elsif (plugin::check_handin(\%itemcount, 72502 => 1)) { #Ice Cream Churn
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(93166);
  }
  elsif (plugin::check_handin(\%itemcount, 93166 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(72502);
  }
  elsif (plugin::check_handin(\%itemcount, 92879 => 1)) { #iksar Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56881);
  }
  elsif (plugin::check_handin(\%itemcount, 56881 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92879);
  }
  elsif (plugin::check_handin(\%itemcount, 17701 => 1)) { #Kavruul's Mystic Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56855);
  }
  elsif (plugin::check_handin(\%itemcount, 56855 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17701);
  }
  elsif (plugin::check_handin(\%itemcount, 17062 => 1)) { #Kejekan Tool Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56804);
  }
  elsif (plugin::check_handin(\%itemcount, 56804 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17062);
  }
  elsif (plugin::check_handin(\%itemcount, 92875 => 1)) { #Koada`Dal Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56877);
  }
  elsif (plugin::check_handin(\%itemcount, 56877 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92875);
  }
  elsif (plugin::check_handin(\%itemcount, 51175 => 1)) { #Large Lemming Fur Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56869);
  }
  elsif (plugin::check_handin(\%itemcount, 56869 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(51175);
  }
  elsif (plugin::check_handin(\%itemcount, 17404 => 1)) { #Large Soiled Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56851);
  }
  elsif (plugin::check_handin(\%itemcount, 56851 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17404);
  }
  elsif (plugin::check_handin(\%itemcount, 17144 => 1)) { #Leatherfoot Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56821);
  }
  elsif (plugin::check_handin(\%itemcount, 56821 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17144);
  }
  elsif (plugin::check_handin(\%itemcount, 17142 => 1)) { #Leatherfoot Belt Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56819);
  }
  elsif (plugin::check_handin(\%itemcount, 56819 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17142);
  }
  elsif (plugin::check_handin(\%itemcount, 17145 => 1)) { #Leatherfoot Haversack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56822);
  }
  elsif (plugin::check_handin(\%itemcount, 56822 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17145);
  }
  elsif (plugin::check_handin(\%itemcount, 17143 => 1)) { #Leatherfoot Shoulderbag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56820);
  }
  elsif (plugin::check_handin(\%itemcount, 56820 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17143);
  }
  elsif (plugin::check_handin(\%itemcount, 17141 => 1)) { #Leatherfoot Small Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56818);
  }
  elsif (plugin::check_handin(\%itemcount, 56818 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17141);
  }
  elsif (plugin::check_handin(\%itemcount, 17140 => 1)) { #Leatherfoot Wrist Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56817);
  }
  elsif (plugin::check_handin(\%itemcount, 56817 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17140);
  }
  elsif (plugin::check_handin(\%itemcount, 51172 => 1)) { #Lemming Fur Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56866);
  }
  elsif (plugin::check_handin(\%itemcount, 56866 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(51172);
  }
  elsif (plugin::check_handin(\%itemcount, 17353 => 1)) { #Light Burlap Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56842);
  }
  elsif (plugin::check_handin(\%itemcount, 56842 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17353);
  }
  elsif (plugin::check_handin(\%itemcount, 17350 => 1)) { #Lionhide Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56840);
  }
  elsif (plugin::check_handin(\%itemcount, 56840 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17350);
  }
  elsif (plugin::check_handin(\%itemcount, 17139 => 1)) { #Marble Mortar and Pestle
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51535);
  }
  elsif (plugin::check_handin(\%itemcount, 51535 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17139);
  }
  elsif (plugin::check_handin(\%itemcount, 17204 => 1)) { #Medium Coin Purse
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56829);
  }
  elsif (plugin::check_handin(\%itemcount, 56829 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17204);
  }
  elsif (plugin::check_handin(\%itemcount, 51174 => 1)) { #Medium Lemming Fur Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56868);
  }
  elsif (plugin::check_handin(\%itemcount, 56868 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(51174);
  }
  elsif (plugin::check_handin(\%itemcount, 17402 => 1)) { #Memento Box
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56849);
  }
  elsif (plugin::check_handin(\%itemcount, 56849 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17402);
  }
  elsif (plugin::check_handin(\%itemcount, 92872 => 1)) { #Northman Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56874);
  }
  elsif (plugin::check_handin(\%itemcount, 56874 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92872);
  }
  elsif (plugin::check_handin(\%itemcount, 17196 => 1)) { #Nigrud's Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56825);
  }
  elsif (plugin::check_handin(\%itemcount, 56825 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17196);
  }
  elsif (plugin::check_handin(\%itemcount, 17186 => 1)) { #Odylic Vial
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51536);
  }
  elsif (plugin::check_handin(\%itemcount, 51536 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17186);
  }
  elsif (plugin::check_handin(\%itemcount, 92880 => 1)) { #Ogre Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56882);
  }
  elsif (plugin::check_handin(\%itemcount, 56882 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92880);
  }
  elsif (plugin::check_handin(\%itemcount, 17302 => 1)) { #Pierce's Pouch of Storing
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56838);
  }
  elsif (plugin::check_handin(\%itemcount, 56838 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17302);
  }
  elsif (plugin::check_handin(\%itemcount, 17072 => 1)) { #Pristine Beetle Box
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56806);
  }
  elsif (plugin::check_handin(\%itemcount, 56806 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17072);
  }
  elsif (plugin::check_handin(\%itemcount, 17008 => 1)) { #Quiver
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56801);
  }
  elsif (plugin::check_handin(\%itemcount, 56801 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17008);
  }
  elsif (plugin::check_handin(\%itemcount, 17359 => 1)) { #Rallic Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56846);
  }
  elsif (plugin::check_handin(\%itemcount, 56846 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17359);
  }
  elsif (plugin::check_handin(\%itemcount, 17251 => 1)) { #Rotted Skin Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56835);
  }
  elsif (plugin::check_handin(\%itemcount, 56835 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17251);
  }
  elsif (plugin::check_handin(\%itemcount, 17129 => 1)) { #Satchel of the Hatchling
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56816);
  }
  elsif (plugin::check_handin(\%itemcount, 56816 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17129);
  }
  elsif (plugin::check_handin(\%itemcount, 33234 => 1)) { #Scrindite's Mechanoinstruction Holepoker
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(93666);
  }
  elsif (plugin::check_handin(\%itemcount, 93666 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(33234);
  }
  elsif (plugin::check_handin(\%itemcount, 92869 => 1)) { #Shar Vahl Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56871);
  }
  elsif (plugin::check_handin(\%itemcount, 56871 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92869);
  }
  elsif (plugin::check_handin(\%itemcount, 17401 => 1)) { #Shralok Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56848);
  }
  elsif (plugin::check_handin(\%itemcount, 56848 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17401);
  }
  elsif (plugin::check_handin(\%itemcount, 17203 => 1)) { #Small Coin Purse
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56828);
  }
  elsif (plugin::check_handin(\%itemcount, 56828 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17203);
  }
  elsif (plugin::check_handin(\%itemcount, 51173 => 1)) { #Small Lemming Fur Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56867);
  }
  elsif (plugin::check_handin(\%itemcount, 56867 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(51173);
  }
  elsif (plugin::check_handin(\%itemcount, 93492 => 1)) { #Spell Research Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(93667);
  }
  elsif (plugin::check_handin(\%itemcount, 93667 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(93492);
  }
  elsif (plugin::check_handin(\%itemcount, 63816 => 1)) { #Steel Reinforced Cragbeast Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51526);
  }
  elsif (plugin::check_handin(\%itemcount, 51526 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63816);
  }
  elsif (plugin::check_handin(\%itemcount, 63816 => 1)) { #Steel Reinforced Cragbeast Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51527);
  }
  elsif (plugin::check_handin(\%itemcount, 51527 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63816);
  }
  elsif (plugin::check_handin(\%itemcount, 62817 => 1)) { #Steel Reinforced Cragbeast Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51528);
  }
  elsif (plugin::check_handin(\%itemcount, 51528 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(62817);
  }
  elsif (plugin::check_handin(\%itemcount, 63803 => 1)) { #Steel Reinforced Hynid-Hide Backpack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51530);
  }
  elsif (plugin::check_handin(\%itemcount, 51530 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63803);
  }
  elsif (plugin::check_handin(\%itemcount, 63804 => 1)) { #Steel Reinforced Hynid-Hide Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51531);
  }
  elsif (plugin::check_handin(\%itemcount, 51531 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63804);
  }
  elsif (plugin::check_handin(\%itemcount, 63805 => 1)) { #Steel-Reinforced Hynid-Hide Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51532);
  }
  elsif (plugin::check_handin(\%itemcount, 51532 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63805);
  }
  elsif (plugin::check_handin(\%itemcount, 63806 => 1)) { #steel Reinforced Hynid-Hide Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51533);
  }
  elsif (plugin::check_handin(\%itemcount, 51533 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(63806);
  }
  elsif (plugin::check_handin(\%itemcount, 66136 => 1)) { #Surefall Fletching Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51542);
  }
  elsif (plugin::check_handin(\%itemcount, 51542 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(66136);
  }
  elsif (plugin::check_handin(\%itemcount, 17123 => 1)) { #Tae Ew Hide Sack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56815);
  }
  elsif (plugin::check_handin(\%itemcount, 56815 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17123);
  }
  elsif (plugin::check_handin(\%itemcount, 17084 => 1)) { #Tailored Large Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56810);
  }
  elsif (plugin::check_handin(\%itemcount, 56810 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17084);
  }
  elsif (plugin::check_handin(\%itemcount, 17083 => 1)) { #Tailored Large Belt Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56809);
  }
  elsif (plugin::check_handin(\%itemcount, 56809 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17083);
  }
  elsif (plugin::check_handin(\%itemcount, 17804 => 1)) { #Tailored Quiver
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56862);
  }
  elsif (plugin::check_handin(\%itemcount, 56862 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17804);
  }
  elsif (plugin::check_handin(\%itemcount, 17047 => 1)) { #Tailored Small Bag
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56803);
  }
  elsif (plugin::check_handin(\%itemcount, 56803 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17047);
  }
  elsif (plugin::check_handin(\%itemcount, 17085 => 1)) { #Tailored Wrist Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56811);
  }
  elsif (plugin::check_handin(\%itemcount, 56811 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17085);
  }
  elsif (plugin::check_handin(\%itemcount, 92876 => 1)) { #Tier`Dal Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56878);
  }
  elsif (plugin::check_handin(\%itemcount, 56878 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92876);
  }
  elsif (plugin::check_handin(\%itemcount, 17352 => 1)) { #Thunderhoof Quiver
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56841);
  }
  elsif (plugin::check_handin(\%itemcount, 56841 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17352);
  }
  elsif (plugin::check_handin(\%itemcount, 17202 => 1)) { #Tiny Coin Purse
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56827);
  }
  elsif (plugin::check_handin(\%itemcount, 56827 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17202);
  }
  elsif (plugin::check_handin(\%itemcount, 17301 => 1)) { #Travelers Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56837);
  }
  elsif (plugin::check_handin(\%itemcount, 56837 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17301);
  }
  elsif (plugin::check_handin(\%itemcount, 17300 => 1)) { #Travelers Pouch
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56836);
  }
  elsif (plugin::check_handin(\%itemcount, 56836 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17300);
  }
  elsif (plugin::check_handin(\%itemcount, 17702 => 1)) { #Treasure Hunter's Satchel
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56856);
  }
  elsif (plugin::check_handin(\%itemcount, 56856 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17702);
  }
  elsif (plugin::check_handin(\%itemcount, 17705 => 1)) { #Treasure Seekers Pack
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56859);
  }
  elsif (plugin::check_handin(\%itemcount, 56859 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17705);
  }
  elsif (plugin::check_handin(\%itemcount, 92881 => 1)) { #Troll Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56883);
  }
  elsif (plugin::check_handin(\%itemcount, 56883 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92881);
  }
  elsif (plugin::check_handin(\%itemcount, 17812 => 1)) { #Vale Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(51543);
  }
  elsif (plugin::check_handin(\%itemcount, 51543 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17812);
  }
  elsif (plugin::check_handin(\%itemcount, 92882 => 1)) { #Vale Sewing Kit
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56884);
  }
  elsif (plugin::check_handin(\%itemcount, 56884 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(92882);
  }
  elsif (plugin::check_handin(\%itemcount, 17207 => 1)) { #Very Large Coin Purse
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56831);
  }
  elsif (plugin::check_handin(\%itemcount, 56831 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17207);
  }
  elsif (plugin::check_handin(\%itemcount, 17104 => 1)) { #Xakra Runed Jar
    plugin::Whisper("Here you go. Bring this token back to me when you would like your bag back.");
    quest::summonitem(56812);
  }
  elsif (plugin::check_handin(\%itemcount, 56812 => 1)) {
    plugin::Whisper("Here you go. Here is your bag back.");
    quest::summonitem(17104);
  }
  plugin::return_items(\%itemcount);
}
#End of File zone: crescent ID: 394064 -- Realnyna
#By Kovou