#Xygoz
sub EVENT_KILLED_MERIT {
	my $raid = $entity_list->GetRaidByClient($client);
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
			if ($rpc->GetZoneID() == $zoneid) {
				$rpc->SetGlobal("Xygoz",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid received credit for killing Xygoz.");
			}
		}
	}
	else {
		$client->SetGlobal("Xygoz",1,5,"F");
		$client->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your group received credit for killing Xygoz.");
	}
}

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Well, I must say it is refreshing to find a new being in my lair after so many years. I have lived a long and fruitful life, yet I yearn for the past and a time when some of us were still whelps, where we learned everything we knew from our masters. My mentor was of the first brood, an ancient dragon, older than any of the other dragons save Veeshan herself. She was and still is a very powerful dragon and I yearn to speak with her. Her name is Lendiniara the Keeper and was the best teacher any dragon could ever have. How would you like to connect me with her great mind? You could perhaps [deliver] a message for me, since I cannot travel these days.");
  }
  if ($text=~/deliver/i) {
    plugin::Whisper("This is indeed a fortunate day for me. Take this letter to Lendiniara for me. It is no ordinary letter. My message is scribed with a magic only she can see. She will be proud I have used a magic she taught to me to greet her again. Thank you for the assistance mortal.");
    quest::summonitem(69333);
  }
}

sub EVENT_ITEM {
  if ($itemcount{69335} == 1) {
    plugin::Whisper("Is this trinket truly meant for me? Lendiniara was not one for giving gifts. Oh, how I miss her. I must thank you again. Once again I'm brimming with pride because of my mentor. Here is your reward. If it doesn't suit you, please give it back and I will find something that does. Farewell.");
    quest::summonitem(69385);
    quest::exp(1000);
  }
  if ($itemcount{69385} == 1) {
    plugin::Whisper("How utterly obtuse and arrogant. How about this one then?");
    quest::summonitem(69386);
  }
  if ($itemcount{69386} == 1) {
    plugin::Whisper("How utterly obtuse and arrogant. How about this one then?");
    quest::summonitem(69385);
  }
}

# Quest by mystic414