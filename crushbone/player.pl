sub EVENT_ENTERZONE {
  #we have a static  global id for this now
  #my $gotoinstanceID = quest::GetInstanceID("crushbone", 1);
  my $gotoinstanceID = 52;
  if ($gotoinstanceID == 0) {
	#create a new instance
	my $gotoinstanceID = quest::CreateInstance("crushbone", 1, 0);
  }
  if(($ulevel >= 65) && (defined $instanceid) && ($instanceid <= 0) ) {
    $client->Message(15, "The world blurs around you as things go dark for a second...the creatures around you look a lot more vicious now...");
	#move to instance
	quest::AssignToInstance($gotoinstanceID);
	quest::MovePCInstance(58, $gotoinstanceID, 13, -60, 4.10);
  }
  else {
	    $client->Message(15, "Sorry, no super crushbone for you!");
  }
  
  if((defined $instanceid) && ($instanceid > 0)) {
	$client->Message(15, "Tread carefully here, these monsters have been...altered...");
  }
}