
sub EVENT_SAY{

my $secrets = quest::saylink ("secrets",1);
my $yes = quest::saylink ("yes", 1);
my $zones = quest::saylink ("zones", 1);
my $progress = quest::saylink ("progress", 1);
my $take = quest::saylink ("take", 1);
my $dreadlands = quest::saylink ("The Dreadlands", 1);



 if ($text =~/hail/i)
 {
plugin::Whisper ("Welcome to the Fort that youll enter. the NPCs will be friendly here, it will be the portside hub city. Still working on the details, so explore, enjoy =)");
 } 
 

if($text=~/secrets/i && $status < 50)
{
plugin::Whisper ("All will be revealed in due time...");

}

if($text=~/yes/i && $status > 90)
        {
               $client->Message(17,"The New content will be a complete continent. Composed of 9 [$zones]. There will be custom mobs  ?");
        }

		
if($text=~/progress/i && $status > 90)
        {
               $client->Message(17,"11-5-11 All zones are connected, content designed, zones tested. we have a self-contained continent now . Doors fixed too.");
        }
		
		
if($text=~/zones/i && $status > 90)
        {
               $client->Message(17,"You will zone into Gunthak.  You can go to hates fury (dungeon), Dulak (outdoor zone), Yxtta , and Ferubi.  From Dulak You can go to The Ascent. (mini raid/ group dungeon). From Yxtta you can go to the Temple of stillmoon or ferubi. From the temple of stillmoon you can go to the sewer plant (boss dungeon/water). From Ferubi you can go to Natimbis shore (tranquil, happy zone). I can [$take] you there.");
        }
		
		if($text=~/take/i && $status > 90)
        {
               $client->Message(17,"Of you go.");
			   quest::movepc(224,-394,-1875,45);
        }
		
		
}





