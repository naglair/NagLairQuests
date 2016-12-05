sub EVENT_SAY {
my $levels = quest::saylink ("levels",1);
my $scribe = quest::saylink ("scribe", 1);
my $levelfifty = quest::saylink ("level 50", 1);

if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I can [$scribe] your spells for you, but never exceeding your [$levels] of experience. (I can also [erase] your spellbook, if you need. You can download the correct spell files from stormhavenserver.com/downloads/spells_us.txt (if you need it) "); }

if($text=~/levels/i)
{plugin::Whisper("I will scribe your current spells only, never anything you can not understand. I will require coin to scribe your spells past 50, however.");}

if ($text=~/erase/i) {
 quest::unscribespells(); 
 }
 
 
 

if ($text=~/scribe/i) {
if($ulevel<=50) {
 quest::scribespells($ulevel); }


if($ulevel>50) { 
plugin::Whisper("I require 100 platinum pieces to scribe your spells at this level. If you forgot to scribe your spells I can scribe up to [$levelfifty] for you for free.");
#quest::scribespells($ulevel); 
}
}

 
if($text=~/level 50/i) {
if($ulevel<50) {
 plugin::Whisper("Nice try, I can't fault you for attempting it! "); 
 }
if($ulevel>=50) {
quest::scribespells(50);
plugin::Whisper("Spells have been scribed to 50!");
			}

}


}

sub EVENT_ITEM{
 if ($ulevel >=50){
  if ($platinum ==100){
quest::scribespells($ulevel);
  }
  
 if ($platinum !=100){
 plugin::Whisper("That's the wrong amount.");
 quest::givecash($copper,$silver,$gold,$platinum );
 }
 }
 if ($ulevel <=49){
 plugin::Whisper("You must reach level 50 before you have to pay for spells.");
 quest::givecash($copper,$silver,$gold,$platinum );
}
plugin::return_items(\%itemcount);
}
