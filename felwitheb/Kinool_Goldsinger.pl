sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Hail and welcome.  I am sure you have much to do, but could I ask a [favor] of you?");
}
if($text=~/What favor/i){
plugin::Whisper("Oh, um, on second thought, never mind.  I should really just do it myself.  Thank you anyway."); 
}
if ($text=~/enchanted bow/i) {
  plugin::Whisper("Alas... Another ranger in search of the [Rain Caller]. She is no more");
}
if ($text=~/Rain Caller/i) {
  plugin::Whisper("Rain Caller is the name we give each Trueshot longbow once it is enchanted. Unfortunately, I am unable to enchant them any longer. One of the components is no longer available. Someone would have to strike a [deal with the fairie folk]. Once I have that and the [remaining components] I can create the Rain Caller, a ranger's bow");
}
if ($text=~/fairie folk/i) {
  plugin::Whisper("The fairie princess, Joleena, used to have a metal gnome deliver [fairie gold dust] to the Keepers every month. She has stopped this and now refuses to offer it to any nation of Faydwer. What she is angry about, we do not know.");
}
if ($text=~/gold dust/i) {
  plugin::Whisper("Fairie gold dust is an enchanted powder which only a fairie princess can create.");
}
if ($text=~/remaining components/i) {
  plugin::Whisper("The remaining components are the Trueshot longbow and a treant heart. There will also be the guild donation in the amount of 3000 gold coins. These and the [fairie gold dust] will merit a ranger the Rain Caller enchanted bow.");
}
}
sub EVENT_ITEM { 
if($itemcount{18778} == 1){
plugin::Whisper("Greetings and welcome aboard!  My name's Kinool. Master Enchanter of the Keepers of the Art.  Here is your guild tunic. Make us proud, young pupil!");
quest::summonitem("13593");
quest::faction("170","1");
quest::faction("178","1");
quest::faction("99","1");
quest::faction("322","-1"); 
}
if (plugin::check_handin(\%itemcount, 12333 => 1, $gold >= 3000, 12334 => 1, 8401 => 1)) {
  plugin::Whisper("Fine work!! I now reward you with The Rain Caller.");
  quest::exp(5000);
  quest::summonitem(8402);
}
}
#END of FILE Zone:felwitheb  ID:62020 -- Kinool_Goldsinger 

