sub EVENT_SPAWN { 
   #quest::shout("!!"); 
   quest::setnexthpevent(95); 
} 

sub EVENT_ATTACK { 
 quest::shout("Wheee heee heee Haaa Haaa Haaa!!");
} 

sub EVENT_HP { 
 my $x = $npc->GetX();
 my $y = $npc->GetY();
 my $z = $npc->GetZ();
 my $h = $npc->GetHeading();
  
  
    
   if($hpevent == 95) { 
   
   quest::shout("Protect my, my puppets!");
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
quest::spawn2(126265,0,0,$x+9,$y+18,$z+30,$h); # rallos puppet
      #firstevent();
	  quest::setnexthpevent(90); 
   }
     
   if($hpevent == 90) { 
   
   quest::shout("Where'd I put those puppets?");
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126291,0,0,$x-5,$y-2,$z+30,$h); # erollisi puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  quest::setnexthpevent(85); 
   }
   
   
      if($hpevent == 85) { 
   
   quest::shout("Hee hee heeeeere they are!!!");
    quest::spawn2(126291,0,0,$x-5,$y-2,$z+30,$h); # erollisi puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  quest::setnexthpevent(80); 
   }
   
   
   
   if($hpevent == 80) { 
   
   quest::shout("Warrrrr harrr ahrrr!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+15,$z+30,$h); # innoruuk puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
      #firstevent();
	  quest::setnexthpevent(75); 
   }

   
  
   if($hpevent == 75) { 
   
   quest::shout("Hee hee!!!!!!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  quest::setnexthpevent(70); 
   }
   
     
   if($hpevent == 70) { 
   
   quest::shout("Stringly Wingly!!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+15,$z+30,$h); # innoruuk puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
quest::spawn2(126265,0,0,$x+9,$y+18,$z+30,$h); # rallos puppet
 quest::spawn2(126163,0,0,$x-10,$y-15,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+3,$z+30,$h); # innoruuk puppet
    quest::spawn2(126291,0,0,$x-5,$y-2,$z+30,$h); # erollisi puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  quest::setnexthpevent(60); 
   }
   
     
   if($hpevent == 60) { 
   
   quest::shout("HAH hooo hooo hooo");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
quest::spawn2(126265,0,0,$x+9,$y+18,$z+30,$h); # rallos puppet
 quest::spawn2(126163,0,0,$x-10,$y-15,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+3,$z+30,$h); # innoruuk puppet
      #firstevent();
	  quest::setnexthpevent(51); 
   }
     
   if($hpevent == 51) { 
   
   quest::shout("Hahaha!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
      #firstevent();
	  quest::setnexthpevent(44); 
   }
     
   if($hpevent == 44) { 
   
   quest::shout("Guffaw!!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+15,$z+30,$h); # innoruuk puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
quest::spawn2(126265,0,0,$x+9,$y+18,$z+30,$h); # rallos puppet
 quest::spawn2(126163,0,0,$x-10,$y-15,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+3,$z+30,$h); # innoruuk puppet

      #firstevent();
	  quest::setnexthpevent(36); 
   }
     
   if($hpevent == 36) { 
   
   quest::shout("Har har har!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
 quest::spawn2(126163,0,0,$x-10,$y-15,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+3,$z+30,$h); # innoruuk puppet
    quest::spawn2(126291,0,0,$x-5,$y-2,$z+30,$h); # erollisi puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  quest::setnexthpevent(29); 
   }
     
   if($hpevent == 29) { 
   
   quest::shout("Waaa haaa haa!");
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+3,$z+30,$h); # innoruuk puppet
    quest::spawn2(126291,0,0,$x-5,$y-2,$z+30,$h); # erollisi puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  quest::setnexthpevent(22); 
   }
     
   if($hpevent == 22) { 
   
   quest::shout("TEE HEE HEE!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+15,$z+30,$h); # innoruuk puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
      #firstevent();
	  quest::setnexthpevent(12); 
   }
     
   if($hpevent == 12) { 
   
   quest::shout("WOO HOOO HOO!");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+15,$z+30,$h); # innoruuk puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
quest::spawn2(126265,0,0,$x+9,$y+18,$z+30,$h); # rallos puppet
 quest::spawn2(126163,0,0,$x-10,$y-15,$z+30,$h); # tunare puppet
      #firstevent();
	  quest::setnexthpevent(3); 
   }
     
   if($hpevent == 3) { 
   
   quest::shout("HA HA HA HA WHO HAS THE LAST LAUGH NOW");
    quest::spawn2(126265,0,0,$x+15,$y+10,$z+30,$h); # rallos puppet
    quest::spawn2(126163,0,0,$x-15,$y-10,$z+30,$h); # tunare puppet
    quest::spawn2(126153,0,0,$x+5,$y+5,$z+30,$h); # innoruuk puppet
quest::spawn2(126249,0,0,$x+20,$y+10,$z+30,$h); # solusek puppet
quest::spawn2(126163,0,0,$x-20,$y-10,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+15,$z+30,$h); # innoruuk puppet
quest::spawn2(126291,0,0,$x-5,$y-15,$z+30,$h); # erollisi puppet
quest::spawn2(126265,0,0,$x+9,$y+18,$z+30,$h); # rallos puppet
 quest::spawn2(126163,0,0,$x-10,$y-15,$z+30,$h); # tunare puppet
quest::spawn2(126153,0,0,$x+5,$y+3,$z+30,$h); # innoruuk puppet
    quest::spawn2(126291,0,0,$x-5,$y-2,$z+30,$h); # erollisi puppet
    quest::spawn2(126246,0,0,$x+15,$y-15,$z+30,$h); # tribunal puppet
      #firstevent();
	  
   }
} 

sub EVENT_DEATH_COMPLETE { 
   quest::shout("I guess you had the last Laugh...."); 
}