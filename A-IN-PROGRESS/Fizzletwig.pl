sub EVENT_SAY {
my $like = quest::saylink ("like",1);
my $weapon = quest::saylink ("weapon", 1);
my $experience = quest::saylink ("experience", 1);

if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I'll be happy to summon pet weapons for you. Would you [$like] that?"); }

if($text=~/like/i)
{plugin::Whisper("I will give you better weapons as you gain [$experience]. Don't fret if the weapons are not incredibly powerful right now! Do you want a [$weapon]?");}

if ($text=~/experience/i) 
{
 { plugin::Whisper("Every ten levels I'll summnon you new weapons! Come back often!"); }
 }

if ($text=~/weapon/i) 
{
if($ulevel<=10 && $ulevel >=1)
{
#level 10
quest::summonitem("1568");
}
if($ulevel<=20 && $ulevel >10)
{
#level 20
quest::summonitem("1569");
}
if($ulevel<=30 && $ulevel >20)
{
#level 30
quest::summonitem("1577");
}
if($ulevel<=40 && $ulevel >30)
{
#level 40
quest::summonitem("1579");
}
if($ulevel<=50 && $ulevel >40)
{
#level 50
quest::summonitem("1581");
}

if($ulevel<=60 && $ulevel >50)
{
#level 60+
quest::summonitem("1582");
}
if($ulevel<=70 && $ulevel >60)
{
#level 60+
quest::summonitem("1587");
}

 }
}


