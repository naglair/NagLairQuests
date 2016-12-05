sub EVENT_SAY {
my $pricelist = quest::saylink ("pricelist",1);
my $heal = quest::saylink ("heal", 1);
my $buff = quest::saylink ("buff", 1);

if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. If you want me to cast a [$buff] on you, please say so. If you need my [$pricelist] just ask!. If you want me to [$heal] you, please say so and I will do it for free. My healing will remove all toxins from your body."); }

if($text=~/pricelist/i)
{plugin::Whisper("Why, Everything is free, my good $race! just ask me to [$buff] you and i will!");}

if ($text=~/heal/i) 
{

quest::selfcast(203);  #Antidote
quest::selfcast(97);  #Antidote
#quest::selfcast(98); #CH
 { plugin::Whisper("Your body has been cleansed...Come back and see me again!"); }
 }

if ($text=~/buff/i) 
{
quest::selfcast(5393); #regen 60hp tick
quest::selfcast(5358); #nettleshield
quest::selfcast(5507); #speed of salik
quest::selfcast(5258); #blessing of devotion
quest::selfcast(1447); #aego		
quest::selfcast(3234); #protection of the nine
quest::selfcast(2524); #Spirit of Bih'Li
quest::selfcast(5396); #wunshi's focusing
quest::selfcast(1598); #avatar
quest::selfcast(3460); #Spiritual Dominion
quest::selfcast(2570); #Koadic's Endless Intellect
quest::selfcast(2529); #Talisman of Epuration DR PR
quest::selfcast(3242); #Guard of Druzzil MR
quest::selfcast(3329); #Elemental Barrier FR CR
}

}


