## NPC: Netherworld_Translocator
## Zone: chambersf - /quests/global/999215.pl
## Role: Porting NPC (template)
## Author: Ghanja
## Dependencies: Kingly_Krab's "Zone.pl" (modified, why reinvent the wheel?)
##

sub EVENT_SAY {
	my @portzones = (	"qeynos2","freporte","freportw","halas","tox","qrg","rivervale","akanon","felwithea",
						"kaladimb","gfaydark","oggok","grobb","neriakc","nektulos","lavastorm","poknowledge");  #array containing short names
	if ($text =~ /Hail/i) {
		plugin::Whisper ("Well hello there $name. Where would you like to go to: ");
	}
	@portargument = split('xxxx', $text);
	if ($portargument[1] ~~  @portzones) {
		quest::say ("Off to ".plugin::Zone("LN", $portargument[1])." you go $name!");
		quest::doanim(42);
		quest::zone ($portargument[1]);
	}
	foreach $portzone (@portzones) {
		plugin::Whisper (quest::saylink ("xxxx".$portzone."",1,"[".plugin::Zone("LN", $portzone)."]"));
	}
}