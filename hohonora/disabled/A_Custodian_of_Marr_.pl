#ID: 211076
sub EVENT_SPAWN {
	quest::spawn2(211081,0,0,-2418,1751,-150,0); #Alek_Trial_Trigger
	quest::settimer(1,7200);
	quest::say("Fools!");
	}

sub EVENT_TIMER {
	if($timer == 1) {
		quest::depop();
		}
	}

sub EVENT_DEATH_COMPLETE {

#MAIDENS:

#ROOM 1

quest::spawn2(211077,0,0,-2468,-1725,-113,65);
quest::spawn2(211077,0,0,-2485,-1719,-113,0);
quest::spawn2(211077,0,0,-2485,-1739,-113,128);

#ROOM 2

quest::spawn2(211078,0,0,-3190,-1725,-113,65);
quest::spawn2(211078,0,0,-3172,-1740,-113,128);
quest::spawn2(211078,0,0,-3172,-1705,-113,0);


#ROOM 3

quest::spawn2(211079,0,0,-3172,-1097,-113,0);
quest::spawn2(211079,0,0,-3201,-1130,-113,192);
quest::spawn2(211079,0,0,-3151,-1129,-113,65);

#MOBS:

#ROOM 1 TRASH

quest::spawn2(211080,0,0,-2400,-1600,-113,160);
quest::spawn2(211080,0,0,-2400,-1870,-113,231);
quest::spawn2(211080,0,0,-2582,-1872,-113,20.6);
quest::spawn2(211080,0,0,-2588,-1727,-113,231);
quest::spawn2(211080,0,0,-2588,-1600,-113,20.6);

#ROOM 2 TRASH

quest::spawn2(211082,0,0,-3318,-1841,-113,13);
quest::spawn2(211082,0,0,-3319,-1725,-113,65);
quest::spawn2(211082,0,0,-3299,-1621,-113,20.6);
quest::spawn2(211082,0,0,-3034,-1636,-113,173);
quest::spawn2(211082,0,0,-3034,-1816,-113,316);

#ROOM 3 TRASH


quest::spawn2(211083,0,0,-3293,-1027,-113,86);
quest::spawn2(211083,0,0,-3027,-1035,-113,65);
quest::spawn2(211083,0,0,-3035,-1229,-113,217);
quest::spawn2(211083,0,0,-3303,-1229,-113,173);
quest::spawn2(211083,0,0,-3168,-1028,-113,316);

quest::signalwith(211081,4,1);
}