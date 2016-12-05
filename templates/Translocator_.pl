

sub EVENT_SAY{
my $gd = quest::saylink ("Great Divide",1);
my $ico = quest::saylink ("iceclad Ocean", 1);
my $ww = quest::saylink ("Western Wastes", 1);
my $wl = quest::saylink ("Wakening Land", 1);
my $fob = quest::saylink ("Field of Bone",1);
my $ot = quest::saylink ("The Overthere", 1);
my $fv = quest::saylink ("Firiona Vie", 1);
my $ej = quest::saylink ("Emerald Jungle", 1);
my $sky = quest::saylink ("Skyfire", 1);
my $dl = quest::saylink ("The Dreadlands", 1);
my $rivervale = quest::saylink ("Rivervale", 1);
my $akanon = quest::saylink ("Akanon", 1);
my $felwithe = quest::saylink ("Felwithe", 1);
my $kaladim = quest::saylink ("Kaladim", 1);
my $kelethin = quest::saylink ("Kelethin", 1);
my $oggok = quest::saylink ("Oggok", 1);
my $grobb = quest::saylink ("Grobb", 1);
my $neriak = quest::saylink ("Neriak", 1);
my $nektulos = quest::saylink ("Nektulos Forest", 1);
my $lobby = quest::saylink ("Lobby", 1);
my $lavastorm = quest::saylink ("Lavastorm Mountains", 1);
my $qeynos = quest::saylink ("Qeynos",1);
my $east_freeport = quest::saylink ("East Freeport", 1);
my $west_freeport = quest::saylink ("West Freeport", 1);
my $halas = quest::saylink ("Halas", 1);
my $erudin = quest::saylink ("Erudin", 1);
my $surefall = quest::saylink ("Surefall Glade", 1);
my $abysmal = quest::saylink ("Abysmal Sea", 1);
my $bindme = quest::saylink ("Bind Your Soul",1);

my $scarlet = quest::saylink ("scarlet",1);
my $shadowhaven = quest::saylink ("shadowhaven",1);
my $dawnshroud = quest::saylink ("dawnshroud",1);
my $hollowshade = quest::saylink ("hollowshade",1);
my $check = quest::saylink ("check",1);




if($text=~/hail/i)
	{
	if (defined($qglobals{flagging})) 			{
	#exists
	if (($qglobals{flagging})==0) {
		#flagged for old world
	  	$client->Message(315,"Well hello there $name. Would you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby] or  [$abysmal]  -- I can also [$bindme] and [$check] your flagging status. ");

								   }
	if (($qglobals{flagging}) == 1) {
	#flagged for Kunark
      #quest::setglobal("flagging",1,5,"F");
	  	$client->Message(315,"Well hello there $name. Would you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby], [$abysmal] ,[$fob], [$fv], [$ot], [$ej], [$sky] or[$dl]? -- I can also [$bindme] and [$check] your flagging status.");
 
							}
	if (($qglobals{flagging}) == 2) {
	#flagged for Velious
      #quest::setglobal("flagging",1,5,"F");
	  	 $client->Message(315,"Well hello there $name. Would you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby], [$abysmal] ,[$fob], [$fv], [$ot], [$ej], [$sky],[$dl], [$gd], [$ico], [$ww], [$wl] -- I can also [$bindme] and [$check] your flagging status.");

							}
	if (($qglobals{flagging}) >= 3) {
	#flagged for Luclin
      #quest::setglobal("flagging",1,5,"F");
	  	 $client->Message(315,"Well hello there $name. Would you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos]... [$lobby], [$abysmal] ... [$fob], [$fv], [$ot], [$ej], [$sky],[$dl]... [$gd], [$ico], [$ww], [$wl] ... [$scarlet], [$shadowhaven], [$hollowshade], [$dawnshroud]-- I can also [$bindme] and [$check] your flagging status.");

							}
							
		
											    }
    else {
	#no variable for character
	#By default flagged for old world
      #quest::setglobal("flagging",0,5,"F");
	  	#plugin::Whisper("No known flagging ");
		$client->Message(315,"Well hello there $name. Would you like to go to [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], [$lobby] or  [$abysmal]  -- I can also [$bindme] ");

		}
	}



  if ($text=~/check/i) {
		if (($qglobals{flagging})==0) {
		#flagged for old world
	  	$client->Message(128,"You are flagged for the Old World currently -- if this is a mistake, please hand your token into the appropraite keeper.");
								   }
						if (($qglobals{flagging})==1) {
		#flagged for old world
	  	$client->Message(128,"You are flagged for Kunark currently -- if this is a mistake, please hand your token into the appropraite keeper.");
								   }
if (($qglobals{flagging})==2) {
		#flagged for old world
	  	$client->Message(128,"You are flagged for Velious currently -- if this is a mistake, please hand your token into the appropraite keeper.");
								   }			
if (($qglobals{flagging})==3) {
		#flagged for old world
	  	$client->Message(128,"You are flagged for Luclin currently -- if this is a mistake, please hand your token into the appropraite keeper.");
								   }								   
								   
		#plugin::Whisper("Checking:: Flag @ $qglobals{flagging}");
  }
		

  
  if ($text=~/debug_reset_flagging/i) {
    	quest::setglobal("flagging",0,5,"F");
		plugin::Whisper("flag  set 0  ");
  }
  if ($text=~/debug_xet1_zzxc/i) {
    	 quest::setglobal("flagging",1,5,"F");
	  	plugin::Whisper("flag  set 1  ");
  }
  if ($text=~/debug_1231231_xet2/i) {
    	 quest::setglobal("flagging",2,5,"F");
	  	plugin::Whisper("flag  set 2  ");
  }
  if ($text=~/10244422112_xet3_debugg_quest_dbddsa/i) {
    	 quest::setglobal("flagging",3,5,"F");
	  plugin::Whisper("flag  set 3  ");
  }



 
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


sub EVENT_ITEM {
plugin::return_items(\%itemcount);
plugin::Whisper("I don't need this!");
}


