sub EVENT_AGGRO {
  plugin::Whisper("${race}s like you are better left dead than alive.");
  plugin::Whisper("You ssssshall know the horror of Cazic-Thule!");
}

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Do you [know fear]?");
  }
if($text=~/i know fear/i) {
    plugin::Whisper("That's great!");
  }
if($text=~/I know no fear/i) {
    quest::attack($name);
}
if($text=~/bless my hay/i) {
    plugin::Whisper("I require 66 gold coin and the hay in order to bless it.");
}
if($text=~/curse my hay/i) {
    plugin::Whisper("I require 66 gold coin and the hay in order to curse it.");
  }
}

sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount,13990=> 1) && ($gold>=66)){
    quest::summonitem(14320);
    quest::faction(18, 10);
}
if(plugin::check_handin(\%itemcount,13990=> 1) && $platinum>=6 && $gold>=6){
    quest::summonitem(14320);
    quest::faction(18, 10);
}

plugin::return_items(\%itemcount); # return unused items
  }