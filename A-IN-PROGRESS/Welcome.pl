#Adako's Welcome Event
sub EVENT_SAY{

my $server = quest::saylink ("server",1);
my $getstarted = quest::saylink ("get started", 1);
my $hunt = quest::saylink ("hunt", 1);
my $more = quest::saylink("more",1);

if ($text =~/Hail/i)
{
plugin::Whisper ("Well hello there $name. Would you like to learn more about this [$server] or just [$getstarted] ? ");
}
if ($text =~/server/i)
{
plugin::Whisper ("Special consideration has been taken to make this a friendly place to play solo or with a small group. Trainers are scattered about this zone, most are easy to find, but the shaman and beastlords retreated to the cave behind me, you can access it by swimming the shallow lake. Are you ready to [$getstarted] ?");
}

if ($text =~/get started/i)
{
plugin::Whisper ("Talk to everyone. Quests are scattered about! Special weapon, charm and armor quests have been implimented! ");

}




}












