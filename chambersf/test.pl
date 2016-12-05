sub EVENT_SAY{
my $raid = $entity_list->GetRaidByClient($client);
my $group = $entity_list->GetRaidByClient($client);
my $raidset = $raid->GetID();
my $raidcheck = $client->GetGlobal($raidset);
if($text=~/hail/i && $raidcheck == $raidset)
{
plugin::Whisper("Logic complete");
}
else{
plugin::Whisper("You are not flagged to hail me");
}
}