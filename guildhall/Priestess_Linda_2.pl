sub EVENT_SAY {
my $pricelist = quest::saylink ("pricelist",1);
my $heal = quest::saylink ("heal", 1);
my $buff = quest::saylink ("buffs", 1);
my $melee = quest::saylink ("melee", 1);
my $caster = quest::saylink ("caster", 1);
my $raid = quest::saylink ("raid", 1);
my $all = quest::saylink ("all", 1);
if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. If you want me to cast [$buff] on you, please say so. If you are in a rush I can give you [$all] my buffs at once.  If you want me to [$heal] you, please say so and I will do it for free. My healing will remove all toxins from your body."); }

if ($text=~/heal/i) 
{

quest::selfcast(203);  #Antidote
quest::selfcast(97);  #Antidote
quest::selfcast(13); #CH
 { plugin::Whisper("Your body has been cleansed...Come back and see me again!"); }
 }

if ($text=~/buffs/i) 
{
{plugin::Whisper("I can give you [$melee], [$caster], [$raid] or [$all] buffs.");}
 }
 
 if ($text=~/melee/i)  {
 quest::selfcast(1568); #regen 20hp tick
 quest::selfcast(5504); #rune of salik
 quest::selfcast(5358); #nettleshield
 quest::selfcast(5507); #speed of salik
 quest::selfcast(1447); #aego	
 quest::selfcast(2524); #Spirit of Bih'Li
  quest::selfcast(5396); #wunshi's focusing
 quest::selfcast(1598); #avatar
 }
 
 if ($text=~/caster/i)  {
 quest::selfcast(1568); #regen 20hp tick
 quest::selfcast(5504); #rune of salik
 quest::selfcast(5258); #blessing of devotion
 quest::selfcast(1447); #aego	
 quest::selfcast(2524); #Spirit of Bih'Li
 quest::selfcast(3460); #Spiritual Dominion
 quest::selfcast(5513); #clairvoyance

 }
 
 if ($text=~/raid/i)  {
 quest::selfcast(2529); #Talisman of Epuration DR PR
quest::selfcast(3242); #Guard of Druzzil MR
quest::selfcast(3329); #Elemental Barrier FR CR
quest::selfcast(5358); #nettleshield
quest::selfcast(5507); #speed of salik
quest::selfcast(1447); #aego	
quest::selfcast(2524); #Spirit of Bih'Li
quest::selfcast(3460); #Spiritual Dominion
quest::selfcast(5513); #clairvoyance

 }
 
  if ($text=~/all/i)  {
 quest::selfcast(1568); #regen 20hp tick
 quest::selfcast(5504); #rune of salik
 quest::selfcast(5358); #nettleshield
 quest::selfcast(5507); #speed of salik
 quest::selfcast(1447); #aego	
 quest::selfcast(2524); #Spirit of Bih'Li
  quest::selfcast(5396); #wunshi's focusing
 quest::selfcast(5362); #nettlecoat
 quest::selfcast(5258); #blessing of devotion
 quest::selfcast(3460); #Spiritual Dominion
  quest::selfcast(2529); #Talisman of Epuration DR PR
quest::selfcast(3242); #Guard of Druzzil MR
quest::selfcast(3329); #Elemental Barrier FR CR
 }
 
 
}










	


