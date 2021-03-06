# Quest for Vrynn in Lakerathe - Shaman Totemic Armor (low 30's armor)
# kiladiveus - completed subevents for this quest NPC. I created the ending statement since i can't find any. Same as exp.

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Greetings, spiritwalker. I am called Vrynn. If you have banded armor, my wife Kyralynn and I can form it into a new shaman armor using this totem and some reagents for the ritual. I make armor from banded [boots], [gauntlets], [sleeves], and [leggings].");
  }
  if($text=~/boots/i) {
    plugin::Whisper("The boots require banded boots, 1 dufrenite, an orc chief's tongue from Lesser Faydark, and terror spines from a tentacle terror in Najena.");
  }
  if($text=~/gauntlets/i) {
   plugin::Whisper("The gauntlets require banded gauntlets, 1 crushed dufrenite, a mammoth rib bone, and a griffenne downfeather.");
  }
  if($text=~/sleeves/i) {
    plugin::Whisper("The sleeves require banded sleeves, 1 ground dufrenite, ghoul carrion from Estate of Unrest, and charger hoof chips.");
  }
  if($text=~/leggings/i) {
   plugin::Whisper("The leggings require banded leggings, 1 powdered dufrenite, a Permafrost snowball from a goblin wizard, and bone barbs from Estate of Unrest."); 
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 3064 => 1, 10073 => 1, 19039 => 1, 19041 => 1)) {
    quest::exp(200);
    quest::summonitem(4941);
    plugin::Whisper("I have crafted your boots, use them well.");
  }
  elsif (plugin::check_handin(\%itemcount, 3062 => 1, 19050 => 1, 19043 => 1, 19046 => 1)) {
    quest::exp(200);
    quest::summonitem(4942);
    plugin::Whisper("I have crafted your gauntlets, use them well.");
  }
  elsif (plugin::check_handin(\%itemcount, 3060 => 1, 19051 => 1, 19038 => 1, 19045 => 1)) {
    quest::exp(200);
    quest::summonitem(4943);
    plugin::Whisper("I have crafted your sleeves, use it well.");
  }
  elsif (plugin::check_handin(\%itemcount, 3063 => 1, 19052 => 1, 19034 => 1, 19037 => 1)) {
    quest::exp(200);
    quest::summonitem(4944);
    plugin::Whisper("I have crafted your leggings, use them well.");
  }
  else {
    plugin::Whisper("You have given me incomplete or the wrong reagents.");
    plugin::return_items(\%itemcount);
  }
}
#END of FILE Zone:lakerathe  ID:51059 -- Vrynn