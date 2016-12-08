

sub EVENT_SAY{




if($text=~/hail/i)	{



   if (($text=~/bind my soul/i) || ($text=~/bind your soul/i))
      {
        $client->Message(215,"Binding your soul. You will return here when you die.");
        quest::doanim(42);
        quest::selfcast(2049);
      }
	  
	  
############################
##########ANTONICA##########
############################
if (defined($qglobals{flagging})) {
if ($text =~/kaladim/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(68,100,2700,0);
}
if ($text =~/kelethin/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(54,8,-47,0);
}
if ($text =~/abysmal/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(279, -199, 0, 114);
}

if ($text =~/lobby/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(344, 0, 0, 0);
}

if ($text =~/guildlobby/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(344,0,0,0);
}

if ($text =~/akanon/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(56,800,-1600,-99);
}


if ($text =~/nektulos/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(25,-700,1800,22);
}
if ($text =~/grobb/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(46,-600,-2500,0);
}

if ($text =~/oggok/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(47,1100,1100,25);
}

if ($text =~/felwithe/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(54,-2100,-2300,20);
}
if ($text =~/east freeport/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(10,-364,-536,-52.22);
}
if ($text =~/west freeport/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(9,245,142,-24.25);
}
if ($text =~/qeynos/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(2,-74,428,3.8);
}

if ($text =~/neriak/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(40,5.42,94.14,26.70);
}

if ($text =~/halas/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(30,682.74,3139.01,-60.16);
}
if ($text =~/rivervale/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(33, -2300, 500, 0);
}
if ($text =~/surefall/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(4, 0, 4700, 0);
}
if ($text =~/lavastorm/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(27, -666.5, 358.6, -95.7);
}

if ($text =~/erudin/i)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(38, 341, 2353, -32);
}
############################
###########KUNARK###########
############################

if ($text =~/Field of Bone/i  && $qglobals{flagging} >= 1)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(78, 1617, -1684, -54.78);
}


if ($text =~/firiona/i   && $qglobals{flagging} >= 1)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(84,1439.96,-2392.06,-2.65);
}


if ($text =~/overthere/i   && $qglobals{flagging} >= 1)
{
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc( 93, -4263, -241, 235);
}


if ($text =~/emerald jungle/i   && $qglobals{flagging} >= 1)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(94, 4648.06, -1222.97, 0);
}


if ($text =~/skyfire/i   && $qglobals{flagging} >= 1)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(91, -3931.32, -1139.25, 39.76);
}
if ($text =~/dreadlands/i   && $qglobals{flagging} >= 1)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(86, 9565.05, 2806.04, 1045.2);
}


############################
##########VELIOUS###########
############################

if ($text =~/Wakening Land/i   && $qglobals{flagging} >= 2)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(119, -4869,-683,-193); } 

if ($text =~/Great Divide/i   && $qglobals{flagging} >= 2)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(118, -965,-7720,-557); } 

if ($text =~/iceclad Ocean/i   && $qglobals{flagging} >= 2)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(110, 340,5333,-15); } 

if ($text =~/Western Wastes/i   && $qglobals{flagging} >= 2)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(120, -3500,-4000,-10); } 

############################
##########LUCLIN$###########
############################

if ($text =~/hollowshade/i   && $qglobals{flagging} >= 3)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(166, 2680,1221,139); } 

if ($text =~/scarlet/i   && $qglobals{flagging} >= 3)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(175, -1678,-1054,-98); } 

if ($text =~/dawnshroud/i   && $qglobals{flagging} >= 3)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(174, 2085,0,89);} 

if ($text =~/shadowhaven/i   && $qglobals{flagging} >= 3)
 {
$client->Message(315,"$name , stand close to me while I cast..");
quest::emote ("opens a rift in space-time and shoves you through...");
quest::movepc(150, 190,-982,-28); } 
}

}



