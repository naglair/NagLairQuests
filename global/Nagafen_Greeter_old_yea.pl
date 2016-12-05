#code for my server greeter
sub EVENT_SAY {

my $book = quest::saylink ("book", 1);
my $adventure = quest::saylink ("adventure", 1);
my $grouping = quest::saylink ("grouping", 1);
my $spells = quest::saylink ("spells", 1);
my $skills = quest::saylink ("skills", 1);
my $travel = quest::saylink ("travel", 1);
my $server_vision = quest::saylink ("server vision", 1);
my $unattune = quest::saylink ("unattuning items", 1);
if ($text =~/Hail/i)
{
	plugin::Whisper ("Good day to you, $name. Welcome to Nagafen's Lair! You are about to embark upon a unique [$adventure] unlike any other. Expansions here are unlocked by Epic quests involving all of the bosses of your current expansion! Would you like to know about [$grouping], [$skills], [$spells], [$travel] or [$server_vision]? Perhaps you'd like to know about [$unattune]? "); 
}


if ($text =~/book/i)
 {
plugin::Whisper ("Then thou shall have mine");
 }
if ($text =~/adventure/i)
 {
plugin::Whisper("On this sever, you unlock each expansion by killing the big bad boss guys of the current expansion. So to unlock Kunark requires you to kill Vox, Nagafen, Phinny, Cazic and Innothule. Each expansion is unlocked by each person for himself.");
plugin::Whisper("Talk to any of the Keeper's over there to understand your current progress.")
plugin::Whisper("While the maximum level is 65, you cannot pass beyond level 60 without completing a special quest! To begin your 65 journey seek out an evil erudite teacher who is willing to help you.")
 }
if ($text =~/grouping/i)
 {
plugin::Whisper ("Mobs are scaled to make solo easy, but group XP bonus has been cranked waaay up! Grouping will gain xp much faster than solo. 2-boxing is allowed.");
 }
if ($text =~/spells/i)
 {
plugin::Whisper ("Good News, The gods have taken pity on your soul! All of your spells and skills are learned automatically!");
 }
if ($text =~/skills/i)
 {
plugin::Whisper ("There is no skill trainer yet, but all your skills, even tradeskills, go up at 500% learn rate");
 }
if ($text =~/travel/i)
 {
plugin::Whisper ("There are translocators in the guildlobby and in every major starting city. Near to them is the Priestess of Light who will buff you and bind you. You do not need to bind in the Guildlobby");
 }

 if ($text =~/unattuning items/i)
 {
plugin::Whisper ("Hand me an item and 20,000 platinum (or more if you're lazy) and it'll be unattuned. It's that simple.");
 }
 
if ($text =~/server vision/i)
 {
plugin::Whisper ("I built this place because I want to enjoy the experience of starting anew, to take my time going through the expansions slowly, and enjoying all the content as it was released. I invite you to share the journey with us. I promise you will not beat this game in 6 months, so surrender to it. There are plenty of servers out there to powergame to the end in a week. This is not one of those. Youre in our world now.");
 }


}

sub EVENT_ITEM
{
	if($platinum >= 20000)
	{
		plugin::unbind_items(\%itemcount);
	}
	else
	{
		plugin::return_items(\%itemcount);
	}
}