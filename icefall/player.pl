
sub EVENT_ENTERZONE {
  if(($qglobals{flagging}) >= 9) {
	#$client->Message(15," flagged to enter PoP zone'");
 
	 #quest::movepc(241,251,33,5);
		}
		if(($qglobals{flagging})<9 && $status < 79) {
	 #$client->Message(15," not flagged to enter PoP zone.'");
	 $client->Message(15,"A Terrible ringing echoes in your head, 'No!'");
quest::movepc(309, 1, 1, 1);
		}
    
 }
 