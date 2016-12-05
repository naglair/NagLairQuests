sub EVENT_SAY {

my $sacrifice = quest::saylink ("sacrifice",1);
my $cost = quest::saylink ("cost", 1);
my $trial = quest::saylink ("trial", 1);


if (($ulevel>=61)  &&($text =~/Hail/i))
{ 
plugin::Whisper("Are you ready for the final [$trial]?"); 
}
if (($ulevel>=61)  &&($text =~/trial/i))
{ 
plugin::Whisper("When you hand me your Rank 7 charm, you must also provide me with white and red dragon scales. Good luck."); 
}
if (($ulevel<=60)  &&($text =~/Hail/i))
{ 
plugin::Whisper("Greetings, $name! I'll be able to upgrade your HappyFace Charm to the next level, but it will require a [$sacrifice]"); 
}

if ($text =~/sacrifice/i)
{ 
plugin::Whisper("Each Time you upgrade your charm, you will be required to pay a blood sacrifice. It will not be cheap, there will be a dire [$cost]"); 
}

if ($text =~/cost/i)
{ 
plugin::Whisper("For each rank of the charm you are handing in, ten levels of your life will you lose. If you wish to proceed, just hand in your charm and prepare yourself for death."); 
}

}

sub EVENT_ITEM {
#rk1-2
if (($ulevel>=10)  && (plugin::check_handin(\%itemcount,59943 => 1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1383");
quest::level($ulevel-9);
#$client->Stand();
}
elsif
#rk2-3
(($ulevel>=20)  && (plugin::check_handin(\%itemcount,1383 => 1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1384");
quest::level($ulevel-19);
}
elsif
#rk3-4
(($ulevel>=30)  && (plugin::check_handin(\%itemcount,1384 => 1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1385");
quest::level($ulevel-29);
}
elsif
#rk4-5
(($ulevel>=40)  && (plugin::check_handin(\%itemcount,1385 => 1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1386");
quest::level($ulevel-39);
}
elsif
#rk5-6
(($ulevel>=50)  && (plugin::check_handin(\%itemcount,1386 => 1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1387");
quest::level($ulevel-49);
}
elsif
#rk6-7
(($ulevel>=60)  && (plugin::check_handin(\%itemcount,1387 => 1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1388");
quest::level($ulevel-59);
}
elsif
#rk7-8
(($ulevel>=61)  && (plugin::check_handin(\%itemcount,1388 => 1,11622 =>1,11602 =>1))) {
plugin::Whisper("Prepare yourself for the afterlife, $name.");
#quest::givecash("0","0","0","10");
#quest::exp(1000);
#client->Duck();
quest::selfcast(1285);
quest::selfcast(331);
quest::selfcast(1792);
quest::summonitem("1383");
quest::level($ulevel-60);
}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("This is NOT what I asked for! Take it back.");
}
}