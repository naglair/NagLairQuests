sub EVENT_SAY
{
my $cure = quest::saylink ("cure", 1);
my $buff = quest::saylink (" free buffs", 1);
my $bind = quest::saylink ("bind", 1);
my $advanced = quest::saylink ("advanced blessing");



if($text=~/debug/i)
{

quest::setglobal("skills", 0, 5, "F");
}
if($text=~/debug2/i)
{
quest::setglobal("skills", 1, 5, "F");
}


if($text=~/hail/i)
	{
		plugin::Whisper("Welcome to my work in progress $name. Theres nothing really here at the moment but the lord and master Foamy...err Maze, is working to populate a new world for you to enjoy.Contact Maze if you need any help here. GMAIL-akaishigpg@gmail.com AIM-akatwinkeeak");
		$client->Message(14,"[$cure], [$buff], [$advanced]  [$bind] "); 

		if($text=~/hail/i && $qglobals{skills} <= 0)
		{
		    plugin::Whisper("In the mean time, Go ahead and level up, heres some free stuff so you don't have to travel every single level!");			
			quest::setglobal(skills,1, 5,"f");
			quest::setallskill(25);
			quest::scribespells(5);
			quest::traindisc(5);
			quest::summonitem(65114,127);
			
		}
	}
			if ($text=~/cure/i)
				{ 
					quest::selfcast(3297); 
				}
		if($text=~/buff/i)
			{
	
			quest::selfcast(276);
			quest::selfcast(278);
			quest::selfcast(219);
			quest::selfcast(368);
			quest::selfcast(146);
			quest::selfcast(148);
			quest::selfcast(279);
			quest::selfcast(129);
			quest::selfcast(35); 
			}
			if ($text =~/advanced blessing/i)
			{ 
				plugin::Whisper("Good, stand where you are while I cast");
				quest::selfcast(3692);
				quest::selfcast(2505);
				quest::selfcast(423);
				quest::selfcast(356);
				quest::selfcast(172);
				quest::selfcast(64);
				quest::selfcast(145);
				quest::selfcast(1693);
				quest::selfcast(15);
				quest::selfcast(60);
				quest::selfcast(61);
				quest::selfcast(46);
				quest::selfcast(2524);
			}
}

	
		
	