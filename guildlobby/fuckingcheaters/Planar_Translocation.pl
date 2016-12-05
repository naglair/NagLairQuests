#A conversation to Teleport Player to a new zone (POK)
sub EVENT_SAY
{
if ($text =~/Hail/i)
 {

plugin::Whisper ("Good day to you, $name. Do you want to go to the Plane of [Hate], or [Sky] or the [bazaar]?");
 }

if ($text =~/sky/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(71, 631.1, 1419.5, -664.2); 
 }
 
 if ($text =~/bazaar/i)
{
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(151, -71,-250,33,0);
}
if ($text =~/hate/i)
 {
plugin::Whisper ("$name , stand close to me while I cast..");
quest::emote ("moves his hands as if chanting...");
quest::movepc(76, -340.8, -352.7, 3.8); 
 }

}




