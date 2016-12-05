sub EVENT_SPAWN {
quest::shout("I hear and obey, oh Fippy!");
$c = $entity_list->GetRandomClient(0, 0, 0, 10000);
quest::settimer("distcheck", 6);
	if(!defined($c))
	{
		quest::stoptimer("distcheck");
		quest::depop(0);
	}
	else
	{
		quest::follow($c->GetID(), 25);
	}
}

sub EVENT_TIMER {
	$c = $entity_list->GetRandomClient(0, 0, 0, 10000);
	if(!defined($c))
	{
		quest::depop(0);
	}
	else
	{
		quest::follow($c->GetID(), 25);
		if($c->CalculateDistance($npc->GetX(), $npc->GetY(), $npc->GetZ()) < 30)
		{
			quest::shout("My life ends in a blaze of glory for you, oh Fippy.");
			$c->Damage($npc, 10000,0,0,0);
			quest::stoptimer("distcheck");
			quest::depop(0);
		}
	}
}