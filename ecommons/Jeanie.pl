sub EVENT_SAY {
my $levels = quest::saylink ("levels",1);
my $scribe = quest::saylink ("scribe", 1);
my $levelfifty = quest::saylink ("level 50", 1);
my $meditate = quest::saylink ("meditate",1);
my $nag = quest::saylink ("www.NagafenServer.com",1);
if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I can [$scribe] your spells for you, but never exceeding your [$levels] of experience. I can also train you to [$meditate]  (I can also [erase] your spellbook, if you need. You can download the correct spell files from [$nag] (if you need it) "); }

if($text=~/levels/i)
{plugin::Whisper("I will scribe your current spells only, never anything you can not understand. I will not teach you spells above level 49. You must earn them yourself.");}

if ($text=~/erase/i) {
 quest::unscribespells(); 
 }
 
 if ($text=~/meditate/i) {
 quest::setskill(31,200); #meditate
 }
 

if ($text=~/scribe/i) {
if($ulevel<=49) {
 quest::scribespells($ulevel); }


if($ulevel>49) { 
plugin::Whisper("You are too advanced for me to teach. You must go into the world to find your spells! If you forgot to scribe your spells I can scribe up to [$levelfifty] for you for free.");
#quest::scribespells($ulevel); 
}
}

 
if($text=~/level 50/i) {
if($ulevel<50) {
 plugin::Whisper("Nice try, I can't fault you for attempting it! "); 
 }
if($ulevel>=50) {
quest::scribespells(49);
plugin::Whisper("Spells have been scribed to 49!");
			}

}


}

sub EVENT_ITEM{
 if ($ulevel <=50){
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
