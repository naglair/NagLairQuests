sub EVENT_SAY{
if($text=~/hail/i){
my $raid = $entity_list->GetRaidByClient($client);
my $group = $entity_list->GetRaidByClient($client);
my $raidset = $raid->GetID();
	if ($raid) {
		## $leaderent = $group->GetLeader();
		for ($count = 0; $count < $raid->RaidCount(); $count++) {
			my $rpc = $raid->GetMember($count);
				#$rpc->SetGlobal("Lord Nagafen",1,5,"F");
				$rpc->SendMarqueeMessage(15, 510, 1, 1, 3000, "Your raid has now been given privilege to hail Planar Bros.");
				plugin::Whisper("$raidset");
				$rpc->Message(13,"Your raid id is $raidset");
				
			
		}
	}
}
}