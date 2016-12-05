sub EVENT_SAY {
my $that = quest::saylink ("that",1);
my $weapon = quest::saylink ("weapon", 1);
my $down = quest::saylink ("down", 1);
my $onehandblunt = quest::saylink ("1Hand Blunt", 1);
my $twohandblunt = quest::saylink ("2Hand Blunt", 1);
my $onehandslash = quest::saylink ("1Hand Slash", 1);
my $twohandslash = quest::saylink ("2Hand Slash", 1);
my $pierce = quest::saylink ("Pierce", 1);
my $twohands = quest::saylink ("Two Hands", 1);
my $fists = quest::saylink("fists",1);
my $caster = quest::saylink("caster",1);
my $upgrade = quest::saylink("upgrade",1);



if ($text =~/Hail/i)
{ 
plugin::Whisper("Greetings, $name are you , by chance, looking for a special weapon? I have plenty... but you have to help me out first. Can you do [$that] for me?"); 
}



if ($text=~/that/i) 
{
plugin::Whisper("Im a bit odd, you see? NO DONT LOOK AT ME.... but you were helping me. HELP ME! I need thing, lots of things... and i'll make you a weapon. Would you like that? A weapon for .. you.. to use, to kill things. Do you want a [$weapon] or do you want a weapon [$upgrade]?");
}
if ($text=~/weapon/i)
 {
#plugin::Whisper("WEAPONS!!!!!!!  $name $name $name $name $name $name $name $name ... WEAPONS!!!! shhh.. keep your voice [$down]!");
plugin::Whisper("WEAPONS!!!!!!!  $name $name $name $name $name $name $name $name ... WEAPONS!!!! shhh.. keep your voice [$down]!");
}
if ($text=~/upgrade/i) {
plugin::Whisper("I'll upgrade the adak's weapon I create for you, but only if you bring me the weapon back, the card I give you when I create the weapon, and a Mid level Work order token, which sally over there sells.");
}
if ($text=~/down/i) 
{
plugin::Whisper("Down? ... From where? You make no sense, well do you want a weapon or not!? I have a [$onehandblunt], [$twohandblunt], [$onehandslash] or a [$twohandslash]. I guess I could also give you something to [$pierce] with,too. I've got a large version of that poker which requires [$twohands] - it's much to heavy for me... Or if you want to use your [$fists] like a REAL GNOME I could make you some brass knuckles. Or, if fighting isn't your thing, I could give you this [$caster] item I traded for the other day.");
}

if ($text=~/1Hand Blunt/i) 
{
plugin::Whisper("For this blunt weapon I will need a custom low level work order token, which is sold in this hut in Surefall,  a gnoll hide battle beads from blackburrow, and  a flask of honey mead, which you can purchase form bubar in the east commonlands");
}

if ($text=~/2Hand Blunt/i) 
{
plugin::Whisper("For this big blunt weapon I will need a custom low level work order token, which is sold in this hut in Surefall, a compass, and a gnoll hide battle beads from blackburrow ");
}

if ($text=~/1Hand Slash/i) 
{
plugin::Whisper("For this slashing weapon I will need a custom low level work order token, which is sold in this hut in Surefall, a gnoll hide battle beads from blackburrow,  and an iron ration!");
}

if ($text=~/2Hand Slash/i) 
{
plugin::Whisper("For this big slashing weapon I will need a custom low level work order token, which is sold in this hut in Surefall, a sharpening stone, and a gnoll hide battle beads from blackburrow ");
}

if ($text=~/Pierce/i) 
{
plugin::Whisper("For this stabbing weapon I will need a custom low level work order token, which is sold in this hut in Surefall, a gnoll hide battle beads from blackburrow,  and some gypsy wine  which you can buy from bubar in the east commonlands tunnel");
}

if ($text=~/Two Hands/i) 
{
plugin::Whisper("For this large poking weapon I will need a custom low level work order token, which is sold in this hut in Surefall, a fishin' pole and gnoll hide battle beads, from blackburrow");
}

if ($text=~/fists/i)
 {
plugin::Whisper("For these special knuckles of fury I will need a custom low level work order token, which is sold in this hut in Surefall, a flask of gator gulp ale from bubar in the east commonlands, and  gnoll hide battle beads from blackburrow.");
}

if ($text=~/caster/i) 
{
plugin::Whisper("For this ... this.. caster thing... I will need a custom low level work order token, which is sold in this hut in Surefall, a gnoll hide battle beads from blackburrow, and some water of povar, which is sold at some caster guild halls!");
}

}

sub EVENT_ITEM {
#1hb
if(plugin::check_handin(\%itemcount,1586 => 1,1264 => 1, 13033 => 1)) {
plugin::Whisper("More junk for me! Woohoo! Take this smacky stick thing as a reward... ");
quest::summonitem("1096");
quest::summonitem("1372");
quest::givecash("0","0","0","10");
quest::exp(10000);
}
elsif
#2hb
(plugin::check_handin(\%itemcount,1264 => 1,12000 => 1, 1586 => 1)) {
plugin::Whisper("Woah! Thanks! Here. Take this stick! And take this card... It will be useful for future upgrades!");
quest::summonitem("1079");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#1hs
(plugin::check_handin(\%itemcount,1586 => 1,1264 => 1, 13005 => 1)) {
plugin::Whisper("I dont need this slashing thing anyways....And take this card... It will be useful for future upgrades!");
quest::summonitem("1118");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#p
(plugin::check_handin(\%itemcount,1264 => 1,1586 => 1, 13052 => 1)) {
plugin::Whisper("Go forth, an stabbeth... And take this card... It will be useful for future upgrades!");
quest::summonitem("1119");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#h2h
(plugin::check_handin(\%itemcount,1586 => 1,12356 => 1, 1264 => 1)) {
quest::summonitem("1261");
plugin::Whisper("PUNCH SOMETHING! do it, do it, do it! And take this card... It will be useful for future upgrades!");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#2hs
(plugin::check_handin(\%itemcount,1264 => 1,12056 => 1, 1586 => 1)) {
plugin::Whisper("Enjoy this cutting thing... too big to slice my bread with anyhow.And take this card... It will be useful for future upgrades!");
quest::summonitem("1266");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#2hp
(plugin::check_handin(\%itemcount,13100 => 1,1264 => 1, 1586 => 1)) {
plugin::Whisper("Woah! Compensating for something? ... take this card... It will be useful for future upgrades!");
quest::summonitem("1267");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#caster
(plugin::check_handin(\%itemcount,1264 => 1,1586 => 1, 16014 => 1)) {
plugin::Whisper("Go ... do whatever it is you do.. you magical peson, you... take this card... It will be useful for future upgrades!");
quest::summonitem("1270");
quest::summonitem("1372");
quest::exp(10000);
}
elsif
#secret bridle shop
(plugin::check_handin(\%itemcount,1445 => 1)) {
plugin::Whisper("Woah! Jackpot, baby! How did you know about this?");
quest::summonitem(quest::ChooseRandom("59509","59510","59516","59517","21817","31492"));
quest::exp(150000);
}
elsif
#gnoll fangs
(plugin::check_handin(\%itemcount,13915 => 4)) {
plugin::Whisper("Thanks. Now ill get to work on that statue...");
quest::exp(2550);
quest::givecash("0","0","0","3"); 
quest::faction(500,10);   # + Crazy_Questgivers
}
elsif
#adak -> kadas basher
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1079 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1391");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas thumper
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1096 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1392");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas slasher
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1118 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1393");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas poker
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1119 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1394");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas fist
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1261 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1395");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas slicer
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1266 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1396");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas skewer
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1267 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1399");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
elsif
#adak -> kadas skewer
(plugin::check_handin(\%itemcount,1372 => 1,1319 =>1, 1270 =>1))
{
plugin::Whisper("Nicely done! Here's your new weapons!");
quest::summonitem("1432");
quest::exp(22550);
quest::faction(500,150);   # + Crazy_Questgivers
quest::ding()
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("I think you misread my instructions. you did want a reward , right? THEN FOLLOW MY DIRECTIONS!");
}
}