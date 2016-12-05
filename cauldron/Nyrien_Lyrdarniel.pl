#cleric dude
#npc - Nyrien Lyrdarniel 
#zone - Dagnors Cauldron
#by Angelox

sub EVENT_SAY {
if($text=~/Hail/i) {
    plugin::Whisper("Greetings, my friend!  You may rest here if you like.  There are many dangers in this land.  May Tunare watch over you when you depart our camp.");
   quest::signal(70007,5);
}else{
  #do nothing
   }
}

sub EVENT_SIGNAL {
plugin::Whisper("Leave our new friend alone, Ghilanbiddle.  He is quite welcome to rest amongst us.");
}

sub EVENT_ATTACK {
    plugin::Whisper("Fabulous Four, attack!");
 }