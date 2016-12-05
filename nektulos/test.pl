sub EVENT_SAY
{
my $client1 = plugin::ClientCheck();
if($text=~/hail/i)
{
quest::say($client->GetClientVersion());
}
}