#code for my server greeter
sub EVENT_SAY {

if ($text =~/Hail/i)
 {
plugin::Whisper("Would you like to know about the latest [changes] or read about [previous] ones?"); 

 }


if ($text =~/changes/i)
 {
plugin::Whisper ("Most recent changes: 11-10-11 potions removed from potion merchant, new potions added for better comaptibility, token of ressurrection chance to wearable by priests only, other classes can buy a scroll that is expendible from the potion merchant. Certain mobs have been changed slightly to keep them balanced with level ranges. Saylinks removed from certain npcs for comaptibiltiy issues.");
 }
 
if ($text =~/previous/i)
 {
plugin::Whisper ("");
 }

 if ($text =~/previous/i)
 {
plugin::Whisper ("");
 }

 if ($text =~/previous/i)
 {
plugin::Whisper ("");
 }

 if ($text =~/previous/i)
 {
plugin::Whisper ("");
 }

 if ($text =~/previous/i)
 {
plugin::Whisper ("");
 }

 if ($text =~/previous/i)
 {
plugin::Whisper ("");
 }

 if ($text =~/10-12-11/i)
 {
quest::whisper ("10-12-11 : 10-12-11
*Delevel quest now available in guildlobby. You can go to any lower level to fight lower dungeons or group with friends and return at any time. Any experience you gained while lower is added to your total when you return.
*Nagafen's Lair Charm on server merchant should have Lobby Gate spell attached, so you guys can bind wherever. *after next reboot*
*Wizards now get the spell "Lobby Gate" instead of "Cazic Gate"
10-11-11
*Tradeskills should skillup significantly faster. 4x is the fastest i found to set it. Let me know if this is working when you test it.
*Kunark zone bug that was crashing the server/GL should now be fixed.
*Level requirements on sebilis, VP have been removed.
*NPC death touch has been reduced to 100dmg hit. If you get DT'd by something, and it kills you or pet instantly. /petition what did it.
*Server information NPC is now back in guildlobby, direct newbs there!
*Level 50 buffs are now available for 100pp from Superior Reinforcement NPC in guild lobby
*Added quest walkthrough for Unlocking Kunark to forums
*Ranger guildmaster is back in guild lobby
*All translocators have been fixed and updated to include Abysmal sea and guildlobby.
*Eye of Veeshan now spawns on 1st level of plane of Sk near keymaster unless youre going after named mobs.
*Keys - All locks on all doors and zones have been removed. Nothing in game requires an actual key anymore. Not najena, not befallen, not sebilis, nothing. Yay!
*Trying to think of a 50 character explanation of our unique server for server listing. Submit your ideas, winner gets 1000pp!");
 }

 

}

