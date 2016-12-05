sub EVENT_ENTERZONE {
if(($qglobals{"flagging"}) < 1 && $status < 79) {
	 #$client->Message(15," not flagged to enter PoP zone.'");
	 $client->Message(15,"A Terrible ringing echoes in your head, 'You are not worthy. Speak to the Planes Keeper to gain access here!'");
quest::movepc(309, 1, 1, 1);
		}
    
 }
