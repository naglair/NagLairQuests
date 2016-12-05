#Nagafens Lair Classic translocator script
sub EVENT_SAY{
my $qeynos = quest::saylink ("Qeynos",1);
my $blackburrow = quest::saylink ("Blackburrow",1);
my $abysmal = quest::saylink ("Abysmal Sea", 1);
my $kurn = quest::saylink ("Kurn",1);
my $warrens = quest::saylink ("warrens",1);
my $paludal = quest::saylink ("paludal",1);
#my $dawnshround = quest::saylink ("dawnshround",1);
my $paw = quest::saylink ("paw",1);
my $south_karana = quest::saylink ("south karana",1);
my $guk = quest::saylink ("guk",1);
my $karnor = quest::saylink ("karnor",1);
my $places = quest::saylink("places",1);
my $pok = quest::saylink("Plane of Knowledge",1);
my $soldungb = quest::saylink("nagafens lair",1);
if ($text =~/Hail/i)
{
plugin::Whisper ("Well hello there $name. I can take you several [$places] if you wish.");
}

if ($text =~/places/i)
{
plugin::Whisper ("In order of difficulty, I recommend: [$qeynos], [$blackburrow], [$kurn]'s Tower ,[$warrens], [$paludal]. [$south_karana] ,[$paw] , [$soldungb], [$guk] and [$karnor]'s castle . You can Use [$pok] for fast travel to places i can't help you with at this time, too."); 
}
if ($text =~/qeynos/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(2,-74,428,3.8);
}

if ($text =~/blackburrow/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(17, 38.92,-158.97,3.75); 
} 

if ($text =~/kurn/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(97, 77.72,-277.64,3.75); 
} 

if (($text =~/pok/i) || ($text =~/plane of knowledge/i))
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(202, -55.82,43.93,-158.81);
} 
if ($text =~/warrens/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(101, -930,748,-37.22); 
} 
if ($text =~/paludal/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(156, -241,-3721,195); 
} 

if ($text =~/dawnshround/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(174,2085,0,89); 
} 

if ($text =~/nagafens lair/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(32, -262.7,-423.99,-108.22); } 


if ($text =~/abysmal/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(279, -199, 0, 114);
}

if ($text =~/paw/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(18,63,-122,3); 
} 

if ($text =~/south karana/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(14,1294,2348,-6); 
} 

if ($text =~/guk/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(66,-217,1197,-78); 
} 

if ($text =~/karnor/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(102,302,18,6); 
} 


}














### UNUSUED ###

{
if ($text =~/Hail/i)
 {
plugin::Whisper ("Hey there, $name. If you know the shortname of the zone you would like to go to, just tell me and I will see if I have a spell to send you there.");
 }
if ($text =~/crushbone/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(58, 158,-644,4); }
if ($text =~/cazicthule/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(48, -80,80,5.5); } 
if ($text =~/akanon/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(55, -35,47,4); } 
if ($text =~/bothunder/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(209, 207,178,-1620); } 
if ($text =~/befallen/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(36, 35.22,-75.27,2.19); } 
if ($text =~/blackburrow/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(17, 38.92,-158.97,3.75); } 
if ($text =~/cabeast/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(106, -416,1343,4); } 
if ($text =~/cabwest/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(82, 790,165,3.75); } 
if ($text =~/mistmoore/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(59, 123,-295,-177); } 
if ($text =~/chardok/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(103, 859,119,106); } 
if ($text =~/thurgadina/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(115, 0,-1222,0); } 
if ($text =~/veksar/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(109, -1,-514.5,49); } 
if ($text =~/cobaltscar/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(117, 895,-939,318); } 
if ($text =~/crystal/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(121, 303,487,-74); } 
if ($text =~/dalnir/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(104, 90,8,3.75); } 
if ($text =~/necropolis/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(123, 2000,-100,5); } 
if ($text =~/dreadlands/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(86, 9565.05,2806.04,1045.2); } 
if ($text =~/dulak/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(225, 438,548,4); } 
if ($text =~/freporte/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(10, -648,-1097,-52.2); } 
if ($text =~/echo/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(153, -800,840,-25); } 
if ($text =~/erudnext/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(24, -309.75,109.64,23.75); } 
if ($text =~/unrest/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(63, 52,-38,3.75); } 
if ($text =~/everfrost/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(30, 682.74,3139.01,-60.16); } 
if ($text =~/fieldofbone/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(78, 1617,-1684,-54.78); } 
if ($text =~/fungusgrove/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(157, -1005,-2140,-308); } 
if ($text =~/greatdivide/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(118, -965,-7720,-557); } 
if ($text =~/grobb/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(52, 0,-100,4); } 
if ($text =~/guktop/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(65, 7,-36,4); } 
if ($text =~/halas/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(29, 0,0,3.75); } 
if ($text =~/highkeep/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(6, 88,-16,4); } 
if ($text =~/charasis/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(105, 0,0,-4.25); } 
if ($text =~/paw/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(18, -7.9,-79.3,4); } 
if ($text =~/kael/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(113, -633,-47,128); } 
if ($text =~/kaesora/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(88, 40,370,99.72); } 
if ($text =~/karnor/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(102, 0,0,4); } 
if ($text =~/kurn/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(97, 77.72,-277.64,3.75); } 
if ($text =~/lakeofillomen/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(85, -5383.07,5747.14,68.27); } 
if ($text =~/nurga/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(107, 150,-1062,-107); } 
if ($text =~/soldungb/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(32, -262.7,-423.99,-108.22); } 
if ($text =~/najena/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(44, -22.6,229.1,-41.8); } 
if ($text =~/nexus/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(152, 0,0,-28); } 
if ($text =~/freportn/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(8, 211,-296,4); } 
if ($text =~/nro/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(34, 299.12,3537.9,-24.5); } 
if ($text =~/oggok/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(49, -99,-345,4); } 
if ($text =~/sebilis/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(89, 0,235,40); } 
if ($text =~/permafrost/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(73, 0,0,3.75); } 
if ($text =~/airplane/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(71, 542.45,1384.6,-650); } 
if ($text =~/fearplane/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(72, 1282.09,-1139.03,1.67); } 
if ($text =~/growthplane/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(127, 3016,-2522,-19); } 
if ($text =~/^hateplane$/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(76, -353.08,-374.8,3.75); } 
if ($text =~/poinnovation/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(206, 241,509,-52.8); } 
if ($text =~/poknowledge/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(202, -55.82,43.93,-158.81); } 
if ($text =~/mischiefplane/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(126, -395,-1410,115); } 
if ($text =~/ponightmare/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(204, 1668,282,210.4); } 
if ($text =~/postorms/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(210, -1755.7,-2001.1,-463.8); } 
if ($text =~/povalor/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(208, 207.4,-1615.1,77.9); } 
if ($text =~/qeytoqrg/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(4, 196.7,5100.9,-1); } 
if ($text =~/rivervale/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(19, 45.3,1.6,3.8); } 
if ($text =~/runnyeye/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(11, -21.85,-108.88,3.75); } 
if ($text =~/shadowhaven/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(150, 190,-982,-28); } 
if ($text =~/skyshrine/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(114, -730,-210,0); } 
if ($text =~/soldunga/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(31, -485.77,-476.04,73.72); } 
if ($text =~/sro/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(35, 286,1265,79); } 
if ($text =~/felwitheb/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(62, -790,320,-10.25); } 
if ($text =~/ssratemple/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(162, 0,0,4); } 
if ($text =~/qrg/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(3, 136.9,-65.9,4); } 
if ($text =~/acrylia/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(154, -664,10,3.2); } 
if ($text =~/arena/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(77, 460.9,-41.4,-7.38); } 
if ($text =~/burningwood/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(87, -820,-4942,200.31); } 
if ($text =~/citymist/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(90, -734,28,3.75); } 
if ($text =~/sharvahl/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(155, 85,-1135,-188); } 
if ($text =~/nadox/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(227, -643.06,-1349.17,-40.87); } 
if ($text =~/dawnshroud/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(174, 2085,0,89); } 
if ($text =~/thegrey/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(171, 349,-1994,-26); } 
if ($text =~/gunthak/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(224, -938.34,1644.83,25.94); } 
if ($text =~/hole/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(39, -1049.98,640.04,-77.22); } 
if ($text =~/jaggedpine/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(181, 1800,1319,-13); } 
if ($text =~/maiden/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(173, 1905,940,-150); } 
if ($text =~/overthere/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(93, -4263,-241,235); } 
if ($text =~/paludal/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(156, -241,-3721,195); } 
if ($text =~/podisease/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(205, -1750,-1243,-56); } 
if ($text =~/hateplaneb/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(186, -392.7,629.44,3.75); } 
if ($text =~/pojustice/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(201, -61,58,5); } 
if ($text =~/scarlet/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(175, -1678,-1054,-98); } 
if ($text =~/umbral/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(176, 1900,-474,23); } 
if ($text =~/frozenshadow/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(111, 200,120,0); } 
if ($text =~/poeartha/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(218, 0,0,0); } 
if ($text =~/velketor/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(112, -65,581,-152); } 
if ($text =~/vexthal/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(158, -1400,343,-40.4); } 
if ($text =~/warrens/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(101, -930,748,-37.22); } 
if ($text =~/warslikswood/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(79, -467.95,-1428.95,197.31); } 
if ($text =~/freportw/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
$client->Message(6, "Wizard Metze tears open the very fabric of time and space and pushes you through...");
quest::movepc(9, 181,335,-24); } 

}
