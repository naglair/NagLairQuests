sub EVENT_SAY
{
if($text=~/hail/i)
{
plugin::Whisper("Hello Traveler. Bring me the head of Tormax, Derakor, and Rallossss Zek'ssss Avatar, and I will reward you with advanced knowledge.")
}
}

sub EVENT_ITEM
{
if(plugin::check_handin(\%itemcount,1387 => 1))
{
plugin::Whisper("That'ssss it, can you feel the knowledge flowing through you?")
$client->Message(13,"You feel a mental barrier unlock");
quest::setglobal("CharMaxlevel", 65, 5, "F");
}
}