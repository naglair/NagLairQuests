#zone: Most Newbee Zones
#General Chat for access to Gloomingdeep
#Angelox

sub EVENT_SAY {
 if ($text=~/hail/i){
  plugin::Whisper("Hail $name! I represent the people of Gloomingdeep, and was sent here to recruit [help].");
}
 elsif ($text=~/help/i && ($ulevel < 10)) {
  plugin::Whisper("A slave revolt has broken out in the mines, we need you to help them as they escape.");
  plugin::Whisper("If you [agree], I will take you with me, as I am about to leave for Gloomingdeep .");
 }
 elsif ($text=~/agree/i && ($ulevel < 10)) {
  plugin::Whisper("Good, Let's help the revolt!.");
  quest::movepc(189,-61.7,-123.0,17.4);
 }
else{
plugin::Whisper("I'm sorry, but you're too high in level to enter.")
 }
}