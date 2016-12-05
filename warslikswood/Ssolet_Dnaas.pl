# Part of quest for Veeshan's Peak key

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Greetingss, $name.  Unlesss you bring closssure to my ssearch, leave me while I contemplate thingss.");
  }
  if ($text=~/search/i) {
    plugin::Whisper("My sssearch. I have been ssent out by my massster to find an item. A burnished wooden sstaff. I know not why and I do not quessstion. I know not where thiss item is found. I musst have one though. Ssssss. If you can find one for me I will give you a trinket.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 6353 => 1)) {
    plugin::Whisper("Sssss. Thisss is what I need. You have my thanksss. Please, take thiss. I know not what it iss for but maybe you will find a ussse for it.");
    quest::summonitem(19958);
    quest::exp(1000);
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}
# Quest by mystic414