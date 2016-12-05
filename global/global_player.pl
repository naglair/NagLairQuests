sub EVENT_LEVEL_UP {
	
		quest::traindiscs ($ulevel, 1);
		quest::scribespells ($ulevel, 1);
		$client->Message( 15, "Your experiences across the realm have infused you with increased power and knowledge..." );
	foreach my $skill (0..42,48..54,62,66,67,70..74) {
		next unless $client->CanHaveSkill($skill);
		my $maxSkill = $client->MaxSkill( $skill, $client->GetClass(), $ulevel );
		next unless $maxSkill > $client->GetRawSkill($skill);
		$client->SetSkill( $skill, $maxSkill );
	}
	if	(($ulevel == 20 && $class ~~ ["Necromancer","Enchanter","Magician","Wizard"]) || 
		($ulevel == 30 && $class ~~ ["Druid","Shaman","Cleric"])) {
			$client->Message(5,	"Remember you can only have 1 specialization over the skill level of 50, the ".
								"first to exceed skill level 50 becomes your specialization!");
	}
}

sub EVENT_SAY {

# my $checklich = plugin::check_hasitem($client, 132552);
# if($checklich)
#   {
# $client->Message(15, "Test completed");
# }
	if ($status >= 40) {
		@args = split(' ', $text);
		#######################################	
		if ($text=~/#gmcommands/i) {
			$client->Message(315,"-----------------------------------");
			$client->Message(315,"Custom Commands Available:");
			$client->Message(315,"-----------------------------------");
			$client->Message(315,"#stats - Display some additional stats for target");
			$client->Message(315,"#setglobal - Set a Qglobal on current target (Use this for Flags!)");
			$client->Message(315,"#flagcplanes - Flags your current Target for the 3 classic planes ");
			$client->Message(315,"#flagkunark - Flags your current Target for Kunark ((S)HE MUST TALK TO KUNARK KEEPER AFTER THIS.");
			$client->Message(315,"#flagvelious - Flags your current Target for Kunark ((S)HE MUST TALK TO VELIOUS KEEPER AFTER THIS.");
			$client->Message(315,"#flagluclin - Flags your current Target for Kunark ((S)HE MUST TALK TO LUCLIN KEEPER AFTER THIS.");
			$client->Message(315,"NOTE: Make sure Player Hail's Keeper **IN ORDER**. Maybe follow them to keepers and flag 1 at a time!");
		}
		#######################################	
		elsif ($text=~/#stats/i) {
			$client->Message (15, "MinDMG: ".$client->GetTarget()->CastToNPC()->GetMinDMG()." -- MaxDMG: ".$client->GetTarget()->CastToNPC()->GetMaxDMG()."");
			$client->Message (15, "Beard Color: ".$client->GetTarget()->GetBeardColor()." -- Bodytype: ".$client->GetTarget()->GetBodyType()." -- Eye 1 Color ".$client->GetTarget()->GetEyeColor1()." -- Eye 2 Color: ".$client->GetTarget()->GetEyeColor2()."");
			$client->Message (15, "Luclin Face Type: ".$client->GetTarget()->GetLuclinFace()."");
		}
		#######################################		
		elsif ($text=~/#flagcplanes/i) {
			if ($client->GetTarget()->IsClient()) {
				#do it
				$client->GetTarget()->CastToClient()->SetGlobal("ClassicPlanes",2,5,"F");
				$client->Message(15, "Done!")
			}
			else {
				$client->Message(15, "Target MUST be a client!  Use #setglobal help for more details");
			}
		}		
		elsif ($text=~/#flagkunark/i) {
			my @killsarray = ("Lord Nagafen","Lady Vox","Phinigel Autropos","Cazic Thule","Innoruuk","Eye of Veeshan");
			if ($client->GetTarget()->IsClient()) {
				#do it
				FlagTheseMobs(\@killsarray);
				$client->Message(15, "Done!")
			}
			else {
				$client->Message(15, "Target MUST be a client!  Use #setglobal help for more details");
			}
		}
		elsif ($text=~/#flagvelious/i) {
			my @killsarray = ("Phara Dar","Druushk","Nexona","Silverwing","Hoshkar","Xygoz","Gorenaire","Trakanon","Severilous","Faydedar","Talendor");
			if ($client->GetTarget()->IsClient()) {
				#do it
				FlagTheseMobs(\@killsarray);
				$client->Message(15, "Done!")
			}
			else {
				$client->Message(15, "Target MUST be a client!  Use #setglobal help for more details");
			}
		}
		elsif ($text=~/#flagluclin/i) {
			my @killsarray = ("King Tormax","Avatar of War","Tunare","Vulak A`err","Master of the Guard","Dain Frostreaver","Derakor the Vindicator","Wuoshi","Lodizal","Final Arbiter","Progenitor");
			if ($client->GetTarget()->IsClient()) {
				#do it
				FlagTheseMobs(\@killsarray);
				$client->Message(15, "Done!")
			}
			else {
				$client->Message(15, "Target MUST be a client!  Use #setglobal help for more details");
			}
		}		
		elsif ($text=~/#setglobal/i) {
			if ($args[1] eq "help") {
				$client->Message(315, "#setglobal <name> <value> <type> <duration>");
				$client->Message(315, "When setting arguments omit the greater than and less than signs.");
				$client->Message(315, "<name> is the name of the Qglobal you wish to set");
				$client->Message(315, "<value> is the value you wish to set the Qglobal to");
				$client->Message(315, "<type> is the type of Qglobal you wish to set (ex. 0 to 7)");
				$client->Message(315, "<duration> is the duration the Qglobal should last (ex. H2 for 2 hours, F for forever, etc.)");
			}
			else {
				if ($args[1] && $args[2] && $args[3] && $args[4]) {
					if ($args[3] ~~ [0..7]) {
						if (uc(substr $args[4],0,1) ~~ ["S","M","H","D","Y","F"]) {
							if ($args[3] ~~ [0,1,4,5]) {
								if ($client->GetTarget()->IsClient()) {
									if 		(uc(substr $args[4],0,1) eq "S") { $durationdisplay = "Seconds"; }
									elsif	(uc(substr $args[4],0,1) eq "M") { $durationdisplay = "Minutes"; }
									elsif	(uc(substr $args[4],0,1) eq "H") { $durationdisplay = "Hours"; }
									elsif	(uc(substr $args[4],0,1) eq "D") { $durationdisplay = "Days"; }
									elsif	(uc(substr $args[4],0,1) eq "Y") { $durationdisplay = "Years"; }
								$client->GetTarget()->CastToClient()->SetGlobal($args[1],$args[2],$args[3],$args[4]);
								$client->Message(15,"Quest Global: ".$args[1]." set on ".$client->GetTarget()->GetCleanName().
													" with a value of ".$args[2]." of type ".$args[3].
													" for a duration of ".(substr $args[4],1,length($args[4])-1)." ".$durationdisplay."");
								}
								else {
									$client->Message(15, "Target MUST be a client!  Use #setglobal help for more details");
								}
							}
							elsif ($args[3] ~~ [0,2,4,6]) {
								if ($client->GetTarget()->IsNPC()) {
									if 		(uc(substr $args[4],0,1) eq "S") { $durationdisplay = "Seconds"; }
									elsif	(uc(substr $args[4],0,1) eq "M") { $durationdisplay = "Minutes"; }
									elsif	(uc(substr $args[4],0,1) eq "H") { $durationdisplay = "Hours"; }
									elsif	(uc(substr $args[4],0,1) eq "D") { $durationdisplay = "Days"; }
									elsif	(uc(substr $args[4],0,1) eq "Y") { $durationdisplay = "Years"; }
									$client->GetTarget()->CastToNPC()->SetGlobal($args[1],$args[2],$args[3],$args[4]);
									$client->Message(15,"Quest Global: ".$args[1]." set on ".$client->GetTarget()->GetCleanName().
														" with a value of ".$args[2]." of type ".$args[3].
														" for a duration of ".(substr $args[4],1,length($args[4])-1)." ".$durationdisplay."");
								}
								else {
									$client->Message(15, "Target MUST be an NPC!  Use #setglobal help for more details");
								}
							}
							elsif ($args[3] == 7) {
								$client->SetGlobal($args[1],$args[2],7,$args[4]);
							}
						}
						else {
							$client->Message(15, "Qglobal duration must begin with S, M, H, D, Y or be F! Use #setglobal help for more details");
						}
					}
					else {
						$client->Message(15, "Qglobal type must be between 0 and 7! Use #setglobal help for more details");
					}
				}
				else {
					$client->Message(15, "Useage: ClassicFlagging 2 5 F  -- Use #setglobal help for more details");
				}
			}
		}
		
	}

	if ($status >= 80) {
		@args = split(' ', $text);
		#######################################
		plugin::Doors_Manipulation_EVENT_SAY();
		#######################################
		if ($text=~/#gmcommands/i) {
			$client->Message(315,"-----------------------------------");
			$client->Message(315,"Custom Commands Available:");
			$client->Message(315,"-----------------------------------");
			$client->Message(315,"#stats - Display some additional stats for target");
			$client->Message(315,"#zemzone - Display and/or adjust ZEM for a zone");
			$client->Message(315,"#gmwho - GM show who's in the zone with IP address(es)");
			$client->Message(315,"#linked - Show targetted players IP linked accounts");
			$client->Message(315,"#identifierzone - Goto instances via identifier");
			$client->Message(315,"#summonall - Will summon all players (not GMs) to your current location");
			$client->Message(315,"#returnplayers - Will return players to their last position before #summonall");

			
		}
		elsif ($text=~/#opendoor/) {
			quest::forcedooropen($arg[1]) if (defined $arg[1]);
		}
		#######################################
		elsif ($text=~/#identifierzone/i) { #:: Goto instance via identifier - Usage: #identifierzone zone version identifier
			if($arg[1]) {
				$connect = plugin::LoadMysql();
				$query =	"SELECT
							zone.zoneidnumber,
							zone.safe_x,
							zone.safe_y,
							zone.safe_z
							FROM
							zone
							WHERE
							short_name = '" . $arg[1] . "'";
				$query_handle = $connect->prepare($query);
				$query_handle->execute();
				while (@row = $query_handle->fetchrow_array()){ $ISL[0] = [@row];}
					$client->Message(15, "Sending you to zone: $arg[1] version: $arg[2] with identifier: $arg[3]");
					plugin::SendToInstance("public", "$arg[1]", $arg[2], $ISL[0][1], $ISL[0][2], $ISL[0][3], "$arg[3]", 65000);
					if($Debug) {
						$client->Message(15, "X: " . $ISL[0][1] . " Y: " . $ISL[0][2] . " Z: " . $ISL[0][3] . "");
					}
				}
			else {
				$client->Message(15, "Usage: #identifierzone zone version identifier");
			}
		}
		#######################################
		elsif ($text=~/#linked/i) {
			if ($client->GetTarget()->IsClient()) {
				$client->Message(11, "-------------------------------------------------------------------------");
				$client->Message(11, "[GM:] Showing Linked Accounts for Targetted Player");
				$client->Message(11, "-------------------------------------------------------------------------");
				my $dbh = plugin::LoadMysql();
				my $sth = $dbh->prepare("
											SELECT accid, name
											FROM account_ip
											INNER JOIN character_data
											ON account_ip.accid = character_data.account_id
											WHERE account_ip.ip = ?
										");
				$sth->bind_param(1,ConvertIP($client->GetTarget()->CastToClient->GetIP()));
				$sth->execute();
				while (my @row = $sth->fetchrow_array()) {
					my ($account_id, $playername ) = @row;
					quest::gmsay ("    Account ID: ".$account_id." --- Name: ".$playername."", 11, 1);
				}
				$sth->finish();
				$dbh->disconnect();
			}
			else {
				$client->Message(15, "[GM:] You MUST target a PLAYER to use this command!");
			}
		}
		#######################################
		elsif ($args[0]=~/#zemzone/i){
			if (($args[1]) && (!$args[2])) {
				my $zonetochange = $args[1];
				my $dbh = plugin::LoadMysql();
				my $sth=$dbh->prepare('SELECT zone_exp_multiplier FROM zone WHERE short_name = ?') 
					or die "Couldn't prepare statement: " . $dbh->errstr;
				$sth->bind_param(1,$zonetochange);
				$sth->execute();
				my $currentzem = $sth->fetchrow_array();
				$client->Message(15, "[GM:] Current ZEM for ".plugin::Zone("LN",$zonetochange)." is $currentzem");
			}
			elsif ($args[1] && $args[2]) {
				my $zonetochange = $args[1];
				my $changezem = $args[2];
				my $dbh = plugin::LoadMysql();
				$sth = $dbh->prepare('SELECT zone_exp_multiplier FROM zone WHERE short_name = ?')
					or die "Couldn't prepare statement: " . $dbh->errstr;					
				$sth->bind_param(1,$zonetochange);
				$sth->execute();
				my $currentzem = $sth->fetchrow_array();
				$client->Message(315, "UPDATING: Changing ZEM for ".plugin::Zone("LN",$zonetochange)." from $currentzem to $changezem");
				$sth = $dbh->prepare('UPDATE zone SET zone_exp_multiplier = ? WHERE short_name = ?')
					or die "Couldn't prepare statement: " . $dbh->errstr;					
				$sth->bind_param(1,$changezem);
				$sth->bind_param(2,$zonetochange);
				$sth->execute();
				$client->Message(15, "[GM:] NOTIFICATION: ZEM for ".plugin::Zone("LN",$zonetochange)." changed from $currentzem to $changezem !");
				quest::reloadallrules();
			}
			else { 
				$client->Message(315,"[GM:] Usage: #ZEMZONE [zonesn] (without backets) to view ZEM for specified [zonesn]"); 
				$client->Message(315,"[GM:] Usage: #ZEMZONE [zonesn] [newzem] (without backets) to change ZEM for specified [zonesn] to [newzem]"); 
			}
		}
		#######################################
		elsif ($text=~/#getaway/i) {
			@zoneclients = $entity_list->GetClientList();
			foreach $singleclient (@zoneclients) {
				if (($singleclient->AccountID() != $client->AccountID()) && (not $singleclient->GetGM())) {
					$singleclient->BuffFadeBySlot($singleclient->GetBuffSlotFromType(57), 1);
					$singleclient->BuffFadeBySlot($singleclient->GetBuffSlotFromType(58), 1);
					if ($client->CalculateDistance($singleclient->GetX(),$singleclient->GetY(),$singleclient->GetZ()) <= 30) {
						$singleclient->DoKnockback($client, 7, 5);
					}
				}
			}
		}
		#######################################
		elsif ($text=~/#summonall/i) {
			quest::delglobal("summonallzone");
			quest::delglobal("summonallx");
			quest::delglobal("summonally");
			quest::delglobal("summonallz");
			quest::delglobal("summonallh");
			$client->SetGlobal("summonallzone",$zoneid,7,"F");
			$client->SetGlobal("summonallx",$client->GetX(),7,"F");
			$client->SetGlobal("summonally",$client->GetY(),7,"F");
			$client->SetGlobal("summonallz",$client->GetZ(),7,"F");
			$client->SetGlobal("summonallh",$client->GetHeading(),7,"F");
			quest::crosszonesignalnpcbynpctypeid(10, 14000);
		}		
		#######################################
		elsif ($text=~/#psay/i) {
			if ($client->GetTarget()->IsClient()) {
				if ($args[1]) {
					$formattedstring = "";
					for ($count = 1; $count < scalar(@args); $count++) {
						$formattedstring = $formattedstring." ".$args[$count];
					}
					$client->GetTarget()->CastToClient()->Say($formattedstring);
				}
			}
		}
		#######################################
		elsif ($text=~/#pshout/i) {
			if ($client->GetTarget()->IsClient()) {
				if ($args[1]) {
					$formattedstring = "";
					for ($count = 1; $count < scalar(@args); $count++) {
						$formattedstring = $formattedstring." ".$args[$count];
					}
					$client->GetTarget()->CastToClient()->Shout($formattedstring);
				}
			}
		}
		#######################################
		elsif ($text=~/#returnplayers/i) {
			quest::crosszonesignalnpcbynpctypeid(10, 15000);
		}
		#######################################
		elsif ($text=~/#gmwho/i) {
			my %classhash = (
				1 	=> "Warrior",
				2 	=> "Cleric",
				3 	=> "Paladin",
				4 	=> "Ranger",
				5 	=> "Shadow Knight",
				6 	=> "Druid",
				7 	=> "Monk",
				8 	=> "Bard",
				9 	=> "Rogue",
				10	=> "Shaman",
				11	=> "Necromancer",
				12	=> "Wizard",
				13	=> "Magician",
				14	=> "Enchanter",
				15	=> "Beastlord",
				16	=> "Berserker",
			);
			my %racehash = (
				1	=>	"Human",
				2	=>	"Babarian",
				3	=>	"Erudite",
				4	=>	"Wood Elf",
				5	=>	"High Elf",
				6	=>	"Dark Elf",
				7	=>	"Half Elf",
				8	=>	"Dwarf",
				9	=>	"Troll",
				10	=>	"Ogre",
				11	=>	"Halfling",
				12	=>	"Gnome",
				128	=>	"Iksar",
				130	=>	"Vah Shir",
				330	=>	"Froglok",
			);
			my %clientversionhash = (
				1	=>	"P99",
				2	=>	"Tit",
				4	=>	"SoF",
				8	=>	"SoD",
				16	=>	"UF",
				32	=>	"RoF",
				64	=>	"RoF2",
			);
			$client->Message (11, "----------------------------------------");
			$client->Message (11, "[GM:] Players in Zone:");
			$client->Message (11, "----------------------------------------");
			my @clientsarray = $entity_list->GetClientList();
			foreach my $singleclient (@clientsarray) {
				my $clientguildname;
				if (quest::getguildnamebyid($singleclient->GuildID())) {
					$clientguildname = "".quest::getguildnamebyid($singleclient->GuildID())."";
				} 
				else { 
					$clientguildname = "NG"; 
				}
				my $wholist =	"[".$singleclient->GetLevel()." ".plugin::customclass($singleclient->GetClass(),$singleclient->GetDeity()).
								"] ".$singleclient->GetName()." (".$classhash{$singleclient->GetClass()}.") (".
								$racehash{$singleclient->GetRace()}.") <".$clientguildname."> [IP: ".ConvertIP($singleclient->GetIP())."] ".
								"[Client: ".$clientversionhash{$client->GetClientVersionBit()}."]";
				$client->Message (11, "".$wholist."");
			}
			$client->Message (11, "-------------------------------------------------------------------");
			$client->Message (11, "There are ".scalar (@clientsarray)." players in zone!");
		}
	}
}

sub EVENT_CONNECT {
	my %clientverhash = (
		1	=>	"P99",
		2	=>	"Ti",
		4	=>	"SoF",
		8	=>	"SoD",
		16	=>	"UF",
		32	=>	"RoF",
		64	=>	"RoF2",
	);
if (not defined $qglobals{"CharMaxLevel"}) { 
		$client->SetGlobal("CharMaxLevel", 60, 5, "F");
		$client->Message (15, "Your maximum achievable level is set to 60!");
	}
	else {
		$client->Message (15, "Your maximum achievable level is set to ".$qglobals{"CharMaxLevel"}."!");
	}
	
	#####################
	## Skill Bug Fix   ##
	#####################
	if($client->GetLanguageSkill(0) != 100) {
		$client->SetLanguageSkill(0, 100);
	}
	if($client->GetSkill(40) != 400) {
		$client->SetSkill(40, 400);
	}
	#######################
	## New Toon Handling ##
	#######################
	if (!defined $qglobals{"firstwelcome"}) {
		quest::setglobal("firstwelcome",1,5,"F");
		quest::setlanguage(0,100);
		if ($status < 80) {
			quest::gmsay ("-----------------------------------------------------------------------------------------------", 257, 1);
			quest::gmsay ("[GM:] <$name> newly created toon, checking IP linked characters:", 11, 1);
			quest::gmsay ("-----------------------------------------------------------------------------------------------", 11, 1);
			my $dbh = plugin::LoadMysql();
			my $sth = $dbh->prepare("
										SELECT accid, name
										FROM account_ip
										INNER JOIN character_data
										ON account_ip.accid = character_data.account_id
										WHERE account_ip.ip = ?
									");
			$sth->bind_param(1,ConvertIP($client->GetIP()));
			$sth->execute();
			while (my @row = $sth->fetchrow_array()) {
				my ($account_id, $playername ) = @row;
				quest::gmsay ("    Account ID: ".$account_id." --- Name: ".$playername."", 11, 1);
			}
			$sth->finish();
			$dbh->disconnect();
			quest::gmsay ("-----------------------------------------------------------------------------------------------", 257, 1);
		}
	}
	#####################
	## Connection Info ##
	#####################
	else {
		quest::gmsay ("-----------------------------------------------------------------------------------------------", 14, 1);
		quest::gmsay ("[GM:] New Connection [IP:".ConvertIP($client->GetIP())."]:", 11, 1);
		if($uguild_id > 0) {
			my $guildname = quest::getguildnamebyid($uguild_id);
			quest::gmsay("($ulevel $class) $name ($race) <$guildname> ZONE: $zonesn", 11, 1);
		}
		else {
			quest::gmsay("($ulevel $class) $name ($race) <UNGUILDED> ZONE: $zonesn", 11, 1);
		}
		quest::gmsay ("Account Name :: [".$client->AccountName()."] --- Status :: [".$status."] --- Client :: [".$clientverhash{$client->GetClientVersionBit()}."]", 11, 1);
		quest::gmsay ("-----------------------------------------------------------------------------------------------", 14, 1);
	}
}

sub EVENT_ENTERZONE {
	my @classiczones	= ("arena","qeynos","qeynos2","qrg","qeytoqrg","highpass","highkeep","freportn","freporte","freportw","runnyeye","qey2hh1","northkarana",
							"southkarana","eastkarana","beholder","blackburrow","paw","rivervale","kithicor","commons","ecommons","erudsxing","erudnext",
							"nektulos","lavastorm","nektropos","halas","everfrost","soldunga","soldungb","misty","nro","sro","befallen","oasis","tox",
							"hole","neriaka","neriakb","neriakc","neriakd","najena","qcat","innothule","feerrott","cazicthule","oggok","rathemtn",
							"lakerathe","grobb","aviak","gfaydark","akanon","steamfont","lfaydark","crushbone","mistmoore","kaladima","felwithea","felwitheb",
							"felwithb","unrest","kedge","guktop","gukbottom","kaladimb","butcher","oot","cauldron","permafrost","paineel",
							"soltemple","chambersf","commonlands","fieldofbone","warslikswood","cabwest","cabeast","swampofnohope","firiona","lakeofillomen","dreadlands","burningwood","kaesora","citymist","skyfire",
							"frontiermtns","overthere","emeraldjungle","trakanon","timorous","kurn","dalnir","iceclad","frozenshadow","velketor","thurgadina","eastwastes","cobaltscar","greatdivide","wakening","westwastes",
							"crystal","necropolis","sirens","nexus","poknowledge","netherbian","paludal","dawnshroud","griegsend","scarlet","thegrey","mseru","umbral","twilight","letalis",
							"fungusgrove","echo","sharvahl","katta","shadeweaver","maiden","abysmal", "highpasshold", "bazaar", "erudnint", "kerraridge",
							"jaggedpine", "stonebrunt", "warrens", 
							"ruja", "rujb", "rujc","rujd","ruje","rujf","rujg","rujh","ruji","rujj",
							"guka","gukb","gukc","gukd","guke","gukf","gukg","gukh","guki","gukj",
							"mmca","mmcb","mmcc","mmcd","mmce","mmcf","mmcg","mmch","mmci","mmcj", 
							"taka","takb","takc","takd","take","takf","takg","takh","taki","takj",
							"mira","mirb","mirc","mird","mire","mirf","mirg","mirh","miri","mirj");
	
	my @kunarkzones		= (	"veeshan","charasis","sebilis","chardok","nurga","veksar", "karnor");
	
	my @veliouszones	= (	"sleeper","mischiefplane","templeveeshan","kael","skyshrine","growthplane","thurgadinb", "chardokb");
	
	my @luclinzones		= (	"droga","acrylia","ssratemple","vexthal","sseru","thedeep","akheva", "shadowhaven", "tenebrous", "grimling", "hollowshade");
	
	my @popzones		= ("potranquility","codecay","pojustice","ponightmare","podisease","poinnovation","povalor","bothunder","postorms",
							"hohonora","solrotower","powar","potactics","poair","powater","pofire","poeartha","potimea","hohonorb","nightmareb","poearthb","potimeb","potorment");
	
	my @planeszones		= (	"airplane","fearplane","hateplane");
	
	my @xerianzones		= (	"barindu","natimbi");
	
	my @specialzones	= (	"gunthak");
	
	my @tier9zones		= (	"arcstone","bloodfields","buriedsea","direwind","eastkorlach","icefall","kattacastrum","moors","nedaria","steppes",
							"sunderock","wallsofslaughter","delvea","broodlands","guildlobby");

	
	my @tieredzones 	= (@classiczones, @kunarkzones, @veliouszones, @luclinzones, @popzones, @planeszones, @xerianzones, @specialzones, @tier9zones);
	if ($status < 80) {
		if ($zonesn ~~ @tieredzones) {
			if (($zonesn ~~ @kunarkzones) && ($qglobals{"flagging"} < 1)) {
					$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Kunark Zone Keeper to gain access here!'");
					quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @veliouszones) && ($qglobals{"flagging"} < 2)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Velious Zone Keeper to gain access here!'");
				quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @luclinzones) && ($qglobals{"flagging"} < 3)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Luclin Zone Keeper to gain access here!'");
				quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @popzones) && ($qglobals{"flagging"} < 4)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Planes of Power Keeper to gain access here!'");
				quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @planeszones) && ($qglobals{"ClassicPlanes"} < 2)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Planes Zone Keeper to gain access here!'");
				quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @xerianzones) && ($qglobals{"flagging"} < 7)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Xerian Zone Keeper to gain access here!'");
				quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @specialzones) && ($qglobals{"flagging"} < 7)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Special Zone Keeper to gain access here!'");
				quest::movepc(309, 1, 1, 1);
			}
			elsif (($zonesn ~~ @tier9zones) && ($qglobals{"flagging"} < 9)) {
				$client->Message(15,"A Terrible ringing echoes in your head, 'Nooooope!'");
				quest::movepc(309, 1, 1, 1);
			}
		}
		else {
		# catch all - where were they?
			$client->Message(15,"ZONE PERMISSION ERROR: Contact a GM and tell him zone name is ".$zonesn ."!");
			quest::movepc(309, 1, 1, 1);
		}
	}
	else {
		$client->Message(15,"[GM:] Admin detected, no zone check!");
	}
}

sub EVENT_DISCOVER_ITEM {
	if (!defined $qglobals{"discovereditems"}) {
		quest::setglobal("discovereditems",1,5,"F");
	}
	else {
		quest::setglobal("discovereditems",$qglobals{"discovereditems"}+1,5,"F");
	}
}

sub EVENT_FORAGE_FAILURE {
	if (!defined $qglobals{"foragefails"}) {
		quest::setglobal("foragefails",1,5,"F");
	}
	else {
		quest::setglobal("foragefails",$qglobals{"foragefails"}+1,5,"F");
	}
}

sub EVENT_FORAGE_SUCCESS {
	if (!defined $qglobals{"foragesuccesses"}) {
		quest::setglobal("foragesuccesses",1,5,"F");
	}
	else {
		quest::setglobal("foragesuccesses",$qglobals{"foragesuccesses"}+1,5,"F");
	}
}

sub EVENT_DUEL_LOSE {
	if (!defined $qglobals{"duelslost"}) {
		quest::setglobal("duelslost",1,5,"F");
	}
	else {
		quest::setglobal("duelslost",$qglobals{"duelslost"}+1,5,"F");
	}
}

sub EVENT_DUEL_WIN {
	if (!defined $qglobals{"duelswon"}) {
		quest::setglobal("duelswon",1,5,"F");
	}
	else {
		quest::setglobal("duelswon",$qglobals{"duelswon"}+1,5,"F");
	}
}

sub EVENT_COMBINE_SUCCESS {
	if (!defined $qglobals{"tscombines"}) {
		quest::setglobal("tscombines",1,5,"F");
	}
	else {
		quest::setglobal("tscombines",$qglobals{"tscombines"}+1,5,"F");
	}
}

sub EVENT_COMBINE_FAILURE {
	if (!defined $qglobals{"tsfailures"}) {
		quest::setglobal("tsfailures",1,5,"F");
	}
	else {
		quest::setglobal("tfailures",$qglobals{"tsfailures"}+1,5,"F");
	}
}

sub EVENT_LOOT {
	if (!defined $qglobals{"looteditems"}) {
		quest::setglobal("looteditems",1,5,"F");
	}
	else {
		quest::setglobal("looteditems",$qglobals{"looteditems"}+1,5,"F");
	}
}

sub EVENT_TRADE {
	if (!defined $qglobals{"tradeditems"}) {
		quest::setglobal("tradeditems",1,5,"F");
	}
	else {
		quest::setglobal("tradeditems",$qglobals{"tradeditems"}+1,5,"F");
	}
}

sub EVENT_SIGNAL {
	if ($signal == 50) {
		if (not $client->GetGM()) {
			my $presummonzone = $qglobals{"presummonreturnzone"};
			my $presummonx = $qglobals{"presummonreturnx"};
			my $presummony = $qglobals{"presummonreturny"};
			my $presummonz = $qglobals{"presummonreturnz"};
			my $presummonh = $qglobals{"presummonreturnh"};
			$client->MovePC($presummonzone, $presummonx, $presummony, $presummonz, $presummonh);
		}
	}
	elsif ($signal == 4) {
		if (not $client->GetGM()) {
			quest::shout ("".$client->GetEntityVariable("myshout")."");
		}
	}
}

sub EVENT_POPUPRESPONSE {
}

sub EVENT_DEATH_COMPLETE {
    # PVP Death
	if ($entity_list->GetMobByID($killer_id) && $entity_list->GetMobByID($killer_id)->IsClient()) {
		if (!defined $qglobals{"pvpdeaths"}) {
			quest::setglobal("pvpdeaths",1,5,"F");
		}
		else {
			quest::setglobal("pvpdeaths",$qglobals{"pvpdeaths"}+1,5,"F");
		}
    }
	else {
		if (!defined $qglobals{"deaths"}) {
			quest::setglobal("deaths",1,5,"F");
		} else {
			quest::setglobal("deaths",$qglobals{"deaths"}+1,5,"F");
		}
	}
}

sub EVENT_CLICKDOOR{
    if($status >= 80){
        plugin::Doors_Manipulation_EVENT_CLICKDOOR();
    }
}

sub ConvertIP {
	my $longip = $_[0];
	$firstoctet = $longip % 256;
	$longip -= $firstoctet;
	$longip /= 256;
	$secondoctet = $longip % 256;
	$longip -= $secondoctet;
	$longip /= 256;
	$thirdoctet = $longip % 256;
	$longip -= $thirdoctet;
	$longip /= 256;
	my $convertedip = "$firstoctet.$secondoctet.$thirdoctet.$longip";
	return $convertedip;
}

sub FlagTheseMobs {
	my @ka = @{$_[0]};
	foreach my $knpc (@ka) {
		# Did they kill this mob yet?
		# Nope, flag it
		$client->GetTarget()->CastToClient()->SetGlobal($knpc,1,5,"F");
		$client->GetTarget()->CastToClient()->Message(15,"Giving you credit for killing ".$knpc."!");
		$client->Message(15,"Gave credit for ".$knpc." to ".$client->GetTarget()->GetCleanName());
	}
}