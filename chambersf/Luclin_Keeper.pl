## NPC: Luclin_Keeper
## Zone: chambersf - /quests/chambersf/Luclin_Keeper.pl
## Role: Flagging and Porting NPC (template)
## Author: Ghanja
## Dependencies: Kingly_Krab's "Zone.pl" (modified, why reinvent the wheel?)
##
no warnings;

sub EVENT_SAY {
	############################## Change the below to fit the proper access needs ##############################
	## NPC: Luclin_Keeper
	my $zoneaccessname = "Luclin";
	my @killsarray = ("King Tormax","Avatar of War","Tunare","Vulak A`err","Master of the Guard","Dain Frostreaver","Derakor the Vindicator","Wuoshi","Lodizal","Final Arbiter","Progenitor");
	my $flaglevelgiven = 3;
	my $summoneditem = 1434;  ## Make 0 if nothing is summoned!
	my $portsenabled = 1;  ## 1 = enabled     0 = disabled or a npc that ONLY handles flagging with no ports
	my @portzones = ("thegrey","tenebrous","maiden","shadowhaven",,"hollowshade","twilight","sseru");  #array containing short names
	#############################################################################################################
	@portargument = split('xxxx', $text);
	if ($portargument[1] ~~  @portzones) {
		quest::say ("$name, stand close to me while I cast..");
		quest::doanim(42);
		quest::emote ("moves his hands as if chanting...");
		quest::zone ($portargument[1]);
	}
	if ($text =~/hail/i) {
		if ((defined $qglobals{"flagging"}) && ($qglobals{"flagging"} >= $flaglevelgiven)) {
			if ($portsenabled == 1) {
				plugin::Whisper ("Please click on a zone to go to: ");
				foreach $portzone (@portzones) {
					plugin::Whisper (quest::saylink ("xxxx".$portzone."",1,"[".plugin::Zone("LN", $portzone)."]"));
				}
			}
			else {
				$client->Message (15, "You are already flagged to enter ".$zoneaccessname." zones!");
			}
		}
		else {		
			plugin::Whisper(	"Greetings $name! Heard ya wanna enter the lands of ".$zoneaccessname."? Would you like to check your ".
								"[".quest::saylink ("kills",1)."] progression? ");
		}
	}
	elsif($text =~/kills/i) {
		$npckills = 0;
		foreach my $knpc (@killsarray) {
			if ((not defined $qglobals{$knpc}) || ($qglobals{$knpc} == 0)) {
				$client->Message(13, "".quest::saylink($knpc,1)." has NOT been slain!");
			}
			else {
				$client->Message(10, "".quest::saylink($knpc,1)." has been slain!");
				++$npckills;
			}
		}
		if ($npckills == scalar(@killsarray)) {
			if ($qglobals{"flagging"} < $flaglevelgiven) {
				$client->Message (15, "Congratulations!  You are now flagged to enter ".$zoneaccessname." zones.");
				quest::setglobal("flagging", $flaglevelgiven, 5, "F");
				quest::summonitem($summoneditem) unless ($summoneditem <= 0);
			}
			else {
				$client->Message (15, "You are already flagged to enter ".$zoneaccessname." zones!");
			}
		}
	}
}