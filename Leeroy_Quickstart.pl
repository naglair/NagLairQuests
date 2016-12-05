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
plugin::Whisper ("Quick start Help: Do i look like a clockwork gnome? If not please download the global npc fix from sites.google.com/site/nagafenslair --- Do Epic tokens drop from cazic thule and innoruuk, they go to your Guildmaster in guild lobby.... Once you complete a progression quest, give the token back to the keeper, he'll make sure you are unlocked for that continent. The translocator will update as you unlock quests. "); 
#quest::emote ("Jumps in joy when he sees $name.");
 }





}
