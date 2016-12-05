

sub EVENT_SPAWN
{
quest::settimer(1,300);
}

sub EVENT_TIMER
{
if($timer = 1)
{
quest::shout("Porting to many different places, Please see me at your local Spires/Ruins!");
}
}

sub EVENT_SAY
{

my $plat = $client->GetCarriedMoney();
my $butcher = quest::saylink("Circle of Butcher",3);
my $karana = quest::saylink("Circle of Karana",1);
my $misty = quest::saylink ("Circle of Misty",1);
my $sro = quest::saylink ("Circle of Ro",1);
my $feerrott = quest::saylink ("Circle of Feerrott",1);
my $dreadlands = quest::saylink ("Circle of the Combines",1);
my $tox = quest::saylink ("Circle of Toxxulia",1);
my $wcommons = quest::saylink ("Circle of Commons",1);
my $cazic = quest::saylink ("Cazic Portal",1);
my $dreadlands2 = quest::saylink ("Combine Portal",1);
my $wcommons2 = quest::saylink ("Common Portal",1);
my $gfay = quest::saylink ("Fay Portal",1);
my $nektulos = quest::saylink ("Nek Portal",1);
my $karana2 = quest::saylink ("North Portal",1);
my $ro = quest::saylink ("Ro Portal",1);
my $tox2 = quest::saylink ("Tox Portal",1);
my $karana3 = quest::saylink("West Portal",1);
my $EJ = quest::saylink("Markar's Relocation:EJ for Wizards",1);
my $skyfire = quest::saylink ("Tishan's Relocation:Skyfire for Wizards",1);




if($text=~/hail/i)
{
plugin::Whisper("Hello $name, I can cast the following teleportation spells for 25 platinum pieces, and a few for 100");
plugin::Whisper(" Druid Ports:[$butcher],[$karana],[$misty],[$sro],[$feerrott],[$dreadlands],[$tox],[$wcommons].");
plugin::Whisper("Wizard Ports: [$gfay],[$nektulos],[$wcommons2],[$dreadlands2],[$ro],[$cazic],[$karana2] [$karana3],[$tox2]");
plugin::Whisper("Wizard Ports: 100pp[$EJ], 100pp [$skyfire].");
plugin::Whisper("I can also bind your soul, it's a free service for levels 20 and under!");
}

if($text=~/Circle of Butcher/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(553);
}
if($text=~/Circle of Karana/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(550);
}
if($text=~/Circle of Misty/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(558);

}
if($text=~/Circle of Ro/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(555);

}
if($text=~/Circle of Feerrott/i and $plat >= 25000)
{

plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(556);
}
if($text=~/Circle of the combines/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(1517);

}
if($text=~/$circle of toxxulia/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(552);

}
if($text=~/circle of commons/i and $plat >= 25000)
{

plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(551);
}
if($text=~/Cazic Portal/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(565);

}
if($text=~/Combine Portal/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(1516);

}
if($text=~/Common Portal/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(566);

}
if($text=~/Fay Portal/i and $plat >= 25000)
{

plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(563);
}
if($text=~/North Portal/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(562);
}
if($text=~/Ro Portal/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(567);

}
if($text=~/Nek Portal/i and $plat >= 25000)
{

plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(564);
}
if($text=~/Tox Portal/i and $plat >= 25000)
{

plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(561);
}
if($text=~/West Portal/i and $plat >= 25000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(25000,1);
quest::selfcast(568);

}
if($text=~/Markar's Relocation:EJ for Wizards/i and $plat >= 100000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(100000,1);
quest::selfcast(1739);
}
if($text=~/Tishan's Relocation:Skyfire for Wizards/i and $plat >= 100000)
{
plugin::Whisper("So long!");
$client->TakeMoneyFromPP(100000,1);
quest::selfcast(1738);
}

}



