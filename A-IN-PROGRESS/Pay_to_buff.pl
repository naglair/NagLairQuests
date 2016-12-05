sub EVENT_SAY {
my $pricelist = quest::saylink ("pricelist",1);
my $heal = quest::saylink ("heal", 1);
my $stripbuffs = quest::saylink ("strip you buffs", 1);

if ($text =~/Hail/i)
{ 




    #if (defined($qglobals{credit})) {
	 if ($qglobals{credit}>0) {
	        plugin::Whisper("I see you have a line of credit, very well. Here are my prices");
    }
    else {
      #quest::setglobal("credit",$cash,0,"F");
	  plugin::Whisper("Your don't appear to have any credit with us. Go talk to Credit, then come back and see me");
    plugin::Whisper("Your credit is : $qglobals{credit}");
	}
}
if($text=~/pricelist/i)
{plugin::Whisper("I can cast the following spells : level 10 buffs = 10 pp // level 20 buffs = 30 pp // Level 30 buffs = 100 pp // Level 40 buffs = 200 pp // Level 50 buffs = 350 pp // Level 60+ Buffs = 650 pp--- be warned, anything you give me that isnt an exact amount of platinum will be kept for my own pockets, so double check the amount please --- I don't do refunds.");}

if ($text=~/heal/i) 
{
quest::selfcast(13); #CH
 quest::selfcast(1525);  #Antidote
 quest::selfcast(1525);  #Antidote
 { plugin::Whisper("Your body has been cleansed...Come back and see me again!"); }
 }
 
}

sub EVENT_ITEM
{
if($platinum == 10)
{
#level 10
quest::selfcast(485); #center
quest::selfcast(515); #sow
quest::selfcast(1776); #thistlecoat
}
if($platinum == 30)
{
#level 20
quest::selfcast(2524); #Spirit of Bih'Li
quest::selfcast(516); #barbcoat
quest::selfcast(4088); #ward of vie
quest::selfcast(263); #skin like rock
quest::selfcast(39); #quickness
}
if($platinum == 100)
{
#level 30
quest::selfcast(518); #spikecoat
quest::selfcast(421); #skin like steel
quest::selfcast(2524); #Spirit of Bih'Li
quest::selfcast(171); #celerity
}
if($platinum == 200)
{
#level 40
quest::selfcast(519); #thorncoat
quest::selfcast(422); #skin like diamond
quest::selfcast(2524); #Spirit of Bih'Li
quest::selfcast(171); #celerity
quest::selfcast(2176); #Spiritual Light
}
if($platinum == 350)
{
#level 50
quest::selfcast(5307); #briarcoat
quest::selfcast(423); #skin like nature
quest::selfcast(2524);#Spirit of Bih'Li
quest::selfcast(1598); #avatar
quest::selfcast(2177); #Spiritual Radiance
quest::selfcast(172); #Swift Like the Wind
}

if($platinum == 650)
{
#level 60+
quest::selfcast(3234); #protection of the nine
quest::selfcast(2524); #Spirit of Bih'Li
quest::selfcast(5396); #wunshi's focusing
quest::selfcast(1598); #avatar
quest::selfcast(3460); #Spiritual Dominion
quest::selfcast(2570); #Koadic's Endless Intellect
quest::selfcast(3240); #Speed of Vallon
quest::selfcast(2529); #Talisman of Epuration DR PR
quest::selfcast(3242); #Guard of Druzzil MR
quest::selfcast(3329); #Elemental Barrier FR CR
}
if($item1== 10028)
{
quest::selfcast(3692);
}
if($itemcount{10028} == 4)
{
quest::selfcast(3467);
}

}


