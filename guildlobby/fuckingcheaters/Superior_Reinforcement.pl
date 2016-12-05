#A conversation to Buff Player for a Cost
sub EVENT_SAY 
{
if ($text =~/hail/i){  plugin::Whisper ("Good day to you, $name. Do you want me to  [buff] you up?");}
if ($text =~/buff/i){  plugin::Whisper ("I charge 100pp for superior buffs.");}
}


sub EVENT_ITEM
  {

if($platinum == 100)
{
 plugin::Whisper ("Good, stand where you are while I cast");
 quest::selfcast(3692);
quest::selfcast(2505);
 quest::selfcast(423);
quest::selfcast(356);
quest::selfcast(172);
quest::selfcast(64);
quest::selfcast(145);
quest::selfcast(1693);
 quest::selfcast(15);
quest::selfcast(60);
quest::selfcast(61);
quest::selfcast(46);quest::selfcast(2524);
}
  }

