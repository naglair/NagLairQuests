sub EVENT_SAY {
my $levels = quest::saylink ("levels",1);
my $scribe = quest::saylink ("scribe", 1);
my $levelfifty = quest::saylink ("level 50", 1);

if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I can [$scribe] your spells for you, but never exceeding your [$levels] of experience. (I can also [erase] your spellbook, if you need. You can download the correct spell files from stormhavenserver.com/downloads/spells_us.txt (if you need it) "); }

if($text=~/levels/i)
{plugin::Whisper("I will scribe your current spells only, never anything you can not understand.");}

if ($text=~/erase/i) {
 quest::unscribespells(); 
 }
 
 
 

if ($text=~/scribe/i) {
if($ulevel<=66) {
 quest::scribespells($ulevel); }



}

 



}

sub EVENT_ITEM{
plugin::return_items(\%itemcount);
}
