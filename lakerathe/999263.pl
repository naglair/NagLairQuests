#focus of hate script
#npcid 999263
#location: lake rathetear
#drops 4x staff of focus'
#swarm fight - every 45seconds he spawns 4 adds


sub EVENT_SPAWN {
quest::modifynpcstat("special_attacks", "SEFTrMCNIDfdL");
}

sub EVENT_COMBAT {
if ($combat_state == 1) {
	quest::shout("Vile wreches!  I shall wipe you from the face of Norrath!");
	quest::settimer("adds",20);
	}
	elsif ($combat_state == 0) {
		   quest::shout("Hah!  Pitiful Mortals!");
		   quest::depopall(999264);
		   quest::stoptimer("adds");
		   }
}

sub EVENT_TIMER {

if ($npc && $timer) {
	if ($timer eq "adds") {
		quest::emote("Summons forth entities of pure hate.");
		quest::spawn2(999264,0,0,$x,$y,$z,$h);
		quest::spawn2(999264,0,0,$x,$y,$z,$h);
		}
	}
}

sub EVENT_DEATH_COMPLETE {
quest::shout2("How can this be?!");
quest::depopall(999264);
quest::stoptimer("adds");
}