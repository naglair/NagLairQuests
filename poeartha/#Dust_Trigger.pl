sub EVENT_SPAWN {
	$counter=0;
	$countertwo=0;
	#quest::spawn_condition($zonesn,1,0); #Make sure we aren't up yet.
}

sub EVENT_SIGNAL {
	if($signal == 1 && !defined $qglobals{dust_ring}) {
	#spawn the 4 extra / dynamic dust devotee
	quest::spawn2(218064,0,0,-221,-1339,-35.5,0);
	quest::spawn2(218064,0,0,-275,-1339,-35.5,0);
	quest::spawn2(218064,0,0,-248,-1290,-35.5,0);
	quest::spawn2(218064,0,0,-250,-1360,-35.5,0);
	quest::setglobal("dust_ring_run",1,3,"H4");
	}

	#every time 218064 / a dust devotee dies, we get here
	if($signal == 2) {
		$counter += 1;		
		if($counter == 4 && !defined $qglobals{dust_ring} && defined $qglobals{dust_ring_run}) {
			#quest::spawn_condition($zonesn,1,0);
			quest::spawn2(218045,0,0,0,-520,30.5,0);
			quest::spawn2(218045,0,0,0,-555,30.5,0);
			quest::spawn2(218045,0,0,0,-589,30.5,0);
			$counter=0;		
		}
	}

 if($signal == 3 && defined $qglobals{dust_ring_run}) {
    $countertwo += 1;
	if($signal == 3 && $countertwo == 3 && !defined $qglobals{dust_ring} && defined $qglobals{dust_ring_run}) {
	$countertwo=0;
	quest::spawn2(218096,0,0,0,-520,30.5,0);
	}
 }

 if($signal == 4 && defined $qglobals{dust_ring_run}) {
 	quest::spawn_condition($zonesn,1,0);
   	quest::delglobal("dust_ring");
   	quest::setglobal("dust_ring",1,3,"H4");
	quest::delglobal("dust_ring_final");
	quest::setglobal("dust_ring_final",1,3,"D2");
	quest::depop_withtimer();
 }
}