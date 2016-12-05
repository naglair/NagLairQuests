#code for my server greeter
sub EVENT_SAY {

if ($text =~/Hail/i)
 {
$client->Message(315,"Would you like to know about the latest [changes] or read about [previous] ones?"); 

 }

if ($text =~/previous/i)
 {
$client->Message(315,"Read about changes from [111011] [110611], [110511], [110311], [101211], [100911]");
 }

if ($text =~/changes/i)
 {
$client->Message(15,"Most recent changes: Pet updates! (more dps!) Vex thal - aten ha ra has had his DT removed. Respawn time increased so its easier to keep the warders down) Aggro clicky added to server merchant. Exploitable Joe joins us! He keeps track of the exploiters on the server. NPC pet classes are being modified to cast pets SIGNIFICANTLY less, since ALL pets have been been bufed.  Leeroy Quickstart is helping us out with the quick help for the most heard questions. Does he need more info? submit helpful tips to sabrina! We also have scribber, who can scribe your spells for whatever reason, and even unscribe your spells, if that's what you're into... Trying to get casters in line with melee @ high end. Wizard Updates: (Increased Crit Chance, More crit damage, too) Pet upgrades:  minimum and max damage increased, attack speed tweaked a little. a bit more hp and ac. shouldnt be as useless now at high levels! Pets should scale a little better at higher levels, too. Flurry will be fixed on reboot! should be 6 seconds, not 60. this is still a testing phase. I need your feedback, otherwise i dont know what works and what doesnt, but i know warriors shouldnt be the best dps and the best tanking class. (but we will figure it out together!) Also proc rates for some weapons adjusted. ");
 }
 
if ($text =~/111011/i)
 {
$client->Message(15," 11-10-11 I am born!! Server Update NPC added to Guild Lobby. Potions removed from potion merchant, new potions added for better comaptibility, token of ressurrection changed to wearable by priests only, other classes can buy a scroll that is expendible from the potion merchant. Certain mobs have been changed slightly to keep them balanced with level ranges. Saylinks removed from certain npcs for comaptibiltiy issues. LDONs have been blocked by level and status. if you find a way to access them please let me know so i can patch that  ");
 }
 
 if ($text =~/101211/i)
 {
$client->Message(15,"10-12-11 : 
*Delevel quest now available in guildlobby. You can go to any lower level to fight lower dungeons or group with friends and return at any time. Any experience you gained while lower is added to your total when you return.
*Nagafen's Lair Charm on server merchant should have Lobby Gate spell attached, so you guys can bind wherever. *after next reboot*
*Wizards now get the spell Lobby Gate instead of Cazic Gate
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

 

 

 if ($text =~/100911/i)
 {
$client->Message(15,"10-09-11 : * All plane of sky keys are now purchasable from the Keymaster on 1st island. That zone is so buggy, you are welcome to do it old school, but you do not need to do so if you choose to bypass your way to EoV. (after next restart)
* Superior Reinforcement - Added level 50 buffer in guildlobby.
*Cazic thule has been reduced in strength and had his HT turned into 100pt atttack. As long as u clear the adds before you pull him, he should be easily doable with 1 group.
*Teleporter doesnt require you say zone name anymore, he should have clicky links
*The teleporter and Priestess in East freeport are back
*The teleporter and Priestess in West freeport are back
*The teleporter and Priestess in qeynos2 are back
*The teleporter and Priestess in everfrost are back");
 }

 if ($text =~/110611/i)
 {
$client->Message(15,"11-06-11: ** Ranger Crit Multiplier has been reduced slightly

** Ranger Miss chance has been slightly increased

**orb of mastery - Now has unlimited charges , but a 35 Second cast time

**Raid Zone 1 is now a hotzone with a significant EXP Bonus!


** new specialization charms available
-- Tank Charm
-- DPS Caster Charm
-- Melee DPS Charm
-- Healer Charm

--- You must have a level 50 nagafen Lair Charm to upgrade to these charms

-- Price (AAs) to upgrade charm has been reduced significantly. (25 from 50)


**nagafen Lair charms have been changed slightly
-- +1 stat per rank (from 2 per rank)
-- +1 resist per rank (from 2 per rank)
-- +1 AC per rank (from 2 per rank)
-- 100 Hp per rank (no change)

**pierce weapon added to raid zone boss loot

** tokens for charm upgrade quest drop in raid zone now");
 }

 if ($text =~/110511/i)
 {
$client->Message(15,"We are working to patch / balance the server as issues arise.
These changes will go live on the next server reboot.
We appreciate your feedback, please let us know how these changes impact you.


** Warrior Disc Flurry is being tweaked for balance.
--As it is prepatch an average warrior (2h) spamming Flurry will be working on 850-1250 DPS
--for comparison monks and rogues (Melee DPS classes) Are hitting ~ 450-650 dps

--Patch Includes: 6 second recast timer for Flurry(up from 0). Triple endurance cost (3->9)



**Aggro Modifiers have been updated
-- Pets now create more aggro
-- Spells create less aggro
-- Melee attacks create more aggro
-- Bard Songs Create less aggro


** In Combat Regen Rates
-- HP Regen in combat has been reduced slightly
-- Item Bonus cap for HP regen has been increased significantly to offset the natural HP regen in combat
--MANA Regen in combat has been reduced slightly
-- Item Bonus cap for MANA regen has been increased significantly to offset the natural MANA regen in combat

** Number of killers per Group Leadership AA / Raid Leadership AA has been reduced significantly
-- You should be able to earn Leadership AA's and Raid AA's In about half the time


** Slight Modification to the Agility Factor in being-hit calculation

** Minor increase in average number of procs per minute

** Increase in number of Rampage Targets struck per rampage.

**Increased Pet /attack response range by 25%

**Minor increase in Wizard Crit Chance");
 }

 if ($text =~/110311/i)
 {
$client->Message(15,"11-03-11: -- Raid Zone Is Open!
---- Talk to the lost spirit in Guild Lobby
---Custom Loot! Custom MOBS! Lots of pain!


--Luclin is Open!
---Talk to the luclin keeper in GL

--Many BUG fixes
---Mob tweaking
--Spawn fixes for several mobs
--certain zones required status / level changes.

-- lots of behind-the scenes work.");
 }

 if ($text =~/previous/i)
 {
$client->Message(15,"");
 }

 
 

}

