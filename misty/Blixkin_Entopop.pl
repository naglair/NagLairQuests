#############
#Quest Name:Bug Collection
#Author:Shaznito
#NPCs Involved:Blixkin Entopop
#Items Involved:Bug Collection Box, Complete Bug Collection, Fire Beetle Eye
#Giant Fire Beetle Leg, Giant Scarab Egg Sack, Giant Wasp Wing, 
#Spiderling Eye, Spiderling Silk
#################

sub EVENT_SAY { 
  if($text=~/hail/i) {
    plugin::Whisper("Hail, $name! My name is Blixkin Entopop. Have you seen the wonderful assortment of [spiders] and [beetles] that inhabit the thicket? I have quite an extensive [bug collection]. Be careful, though. I have seen many brave halflings fall beneath a [swarm] of clicking and hissing bugs.");
  }
  if($text=~/spiders/i) {
    plugin::Whisper("There are many species of bugs out here. The most common are the fire beetles. If you are hunting them, make sure their queen is not around or you will be in deep trouble. Their eyes are a popular item for adventurers because they give off light as if they were on fire. I even had one warrior try to kill [Ember] for her eyes!!");
  }
  if($text=~/ember/i) {
    plugin::Whisper("I raised Ember from an egg. She is my faithful pet and quite smart for a beetle. There are plenty of other bugs to squish, out in the thicket, so you had best leave her alone or I will have to SQUISH you!");
  }
  if($text=~/swarms/i) {
    plugin::Whisper("Bugs tend to swarm and defend others of their species when they are attacked. So keep your eyes peeled if you intend to squish any of them.. And you'd better not even THINK of squishing [Ember] or you will be sorry!");
  }
  if($text=~/beetles/i) {
    plugin::Whisper("There are many species of bugs out here. The most common are the fire beetles. If you are hunting them, make sure their queen is not around or you will be in deep trouble. Their eyes are a popular item for adventurers because they give off light as if they were on fire. I even had one warrior try to kill [Ember] for her eyes!!");
  }
  if($text=~/collection/i) {
    plugin::Whisper("Here you go. Just follow the instructions on the [list] so you know what to collect and how to prepare the collection for me.");
    quest::summonitem(17922);
  }
  if($text=~/list/i) {
    plugin::Whisper("What did you do, lose the list? Here is another one. Hold onto it because I will want it back when you are done.");
    quest::summonitem(18011);
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13268 => 1, 18011 => 1)) {
    plugin::Whisper("Excellent! Good work! I knew you were the one for this job! Thank you so much! My collection just gets better and better each day. Here is your reward as I promised.");
    quest::summonitem(quest::ChooseRandom(14010,13281,13280,14015,16875));
    quest::faction(218, 12);
    quest::faction(77, 12);
    quest::faction(133, 12);
    quest::faction(208, 12);
    quest::faction(48, -15);
    quest::exp(65);
    quest::givecash(0,8,3,0);
  }
  else {
    plugin::Whisper("I have no need for this item $name, you can have it back.");
    plugin::return_items(\%itemcount);
  }
}

sub EVENT_SPAWN {
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  my $z = $npc->GetZ();
  my $h = $npc->GetHeading();

  quest::spawn2(33065,138,0,$x - 10,$y,$z,$h);
}
#END of FILE Zone:misty  ID:33066 -- Blixkin_Entropop