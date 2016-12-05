sub EVENT_ENTERZONE {
  if(($qglobals{flagging}) >= 9) {
	#$client->Message(15," flagged to enter kunark zone'");
 
	 #quest::movepc(241,251,33,5);
		}
		if(($qglobals{flagging})<9) {
	 #$client->Message(15," not flagged to enter kunark zone.'");
	 $client->Message(15,"A Terrible ringing echoes in your head, 'No. Nice try though!'");
quest::movepc(309, 1, 1, 1);
		}
    
 