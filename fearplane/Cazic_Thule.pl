# Call Dread, Fright & Terror to aid Cazic Thule if they're still alive
# code by mystic414
#
# Cazic Thule also administers the Whistling Fists quest for iksar monks

sub EVENT_SPAWN {
  quest::settimer("Shout",600);
}

sub EVENT_SAY {
 if($text=~/gandan has failed in his task/i) {
  quest::emote("'s thoughts begin to pervade your own, they creep into your mind with great force. You feel pressure as if your head will explode. You see his thoughts becoming your own. You see in these visions a tome bound in flesh dropped to the ground. You then open your eyes to see that same book, and take it knowing that it was meant for you.");
  quest::summonitem(18898);
 }
}

sub EVENT_ITEM {
 if(plugin::check_handin(\%itemcount, 8226 => 1, 18898 => 1, 18899 => 1)){
  quest::emote("seems pleased with the amount of pain that you have been able to inflict. Cazic Thule then grabs your hands and begins to infuse them with his power. Your hands burn like they were placed in lava for a moment, then feel cool as ice. You can feel the sheer power flowing through your new weapons of pain.");
  quest::summonitem(7836);
  quest::exp(100000);
  quest::ding();
 }
 else{ 
 plugin::return_items(\%itemcount);
 quest::emote("That is not what I sent you for, my child."); #Made this up
 }
}

sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Cazic Thule",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Cazic Thule.");
			}
		}
	}
	else {
		$client->SetGlobal("Cazic Thule",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Cazic Thule.");
	}
}

s