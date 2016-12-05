# Rogue Epic NPC/Guildmaster -- Founy_Jestands

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hello. I am the guildmaster.");
 }
  if($text=~/note/i) {
    quest::emote("fingers his belt pouch.");
    plugin::Whisper("I don't know what you're talking about, if you know what I mean. You should leave now, if you know what's good for you. Don't make me sic the crew on you.");

 }

sub EVENT_ITEM {
  plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
  plugin::return_items(\%itemcount);

 }
}


#END of FILE  Quest by: Solid11  Zone:kaladimb  ID:67000 -- Founy_Jestands