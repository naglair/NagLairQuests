#code for my server greeter
sub EVENT_SAY {

my $book = quest::saylink ("book", 1);
my $adventure = quest::saylink ("adventure", 1);
my $grouping = quest::saylink ("grouping", 1);
my $spells = quest::saylink ("spells", 1);
my $skills = quest::saylink ("skills", 1);
my $travel = quest::saylink ("travel", 1);
my $server_vision = quest::saylink ("server vision", 1);

if ($text =~/Hail/i)
 {
plugin::Whisper ("Good day to you, $name. Welcome to Nagafen's Lair! You are about to embark upon a unique [$adventure] unlike any other. Expansions here are unlocked by Epic quests involving all of the bosses of your current expansion! We are in alpha-testing, so as a reward for testing, there is a Server Charm free on the newbie vendor! Would you like to know about [$grouping], [$skills], [$spells], [$travel] or [$server_vision]? "); 
#quest::emote ("Jumps in joy when he sees $name.");
 }


if ($text =~/book/i)
 {
plugin::Whisper ("Then thou shall have mine");
 }
if ($text =~/adventure/i)
 {
plugin::Whisper ("On this sever, you unlock each expansion on a Character level basis. So the quest to unlock Kunark requires you to have the quest items from Vox, Nagafen, Phinny, Cazic and Innothule. Once you have unlocked Kunark, your account has the flag, so any alts you start can begin in the new expansion or old. Each expansion is unlocked by each person for himself.");
 }
if ($text =~/grouping/i)
 {
plugin::Whisper ("Mobs are scaled to make solo easy, but group XP bonus has been cranked waaay up! Grouping will gain xp much faster than solo. 2-boxing is allowed until server pop reaches 50+");
 }
if ($text =~/spells/i)
 {
plugin::Whisper ("There is a free spell scriber in the guild lobby for spells up to 10. After that you have to purchase them in the world, quest for them, or buy them at the Advanced Spellscriber in the guildlobby for a hefty fee");
 }
if ($text =~/skills/i)
 {
plugin::Whisper ("There is no skill trainer yet, but all your skills, even tradeskills, go up at 500% learn rate");
 }
if ($text =~/travel/i)
 {
plugin::Whisper ("There are translocators in the guildlobby and in every major starting city. Near to them is the Priestess of Light who will buff you and bind you. You do not need to bind in the Guildlobby");
 }

if ($text =~/server vision/i)
 {
plugin::Whisper ("I built this place because I want to enjoy the experience of starting anew, to take my time going through the expansions slowly, and enjoying all the content as it was released. I invite you to share the journey with us. I promise you will not beat this game in 6 months, so surrender to it. There are plenty of servers out there to powergame to the end in a week. This is not one of those. Youre in our world now.");
 }

}
