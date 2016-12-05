
sub EVENT_SAY
{
if($text=~/Hail/i)
{
$client->Message(4,"You see blood coming from his mouth, it seems he could use some type of healing");
}
if($text=~/remove/i)
{
quest::delglobal("runny");
plugin::Whisper("Removed");
}
}

sub EVENT_CAST_ON
	{
	
	if($spell_id == 17 && $qglobals{runny} == 0)
	{
	my $x = $npc->GetX();
    my $y = $npc->GetY();
    my $z = $npc->GetZ();
    quest::setglobal("runny",1,5,"f");
	quest::spawn2(999254,0,0,$x,$y,$z,108);
	quest::depop(999252);
	}
	}
	