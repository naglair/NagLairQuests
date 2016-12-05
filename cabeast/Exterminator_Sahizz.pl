#Exterminator_Sahizz  ID  106009

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Greetings, $name.  Help rid this area of vermin!  Bring me four loose scales for a few coin and good favor in town.");
  }
  }
  sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 12466 =>4 )) {
    plugin::Whisper("Thank you, $name.  Here is your reward.");
    quest::exp(50);
    quest::givecash(0,5,0,0);
    quest::faction( 30,3 );
    quest::faction( 193,3 );
    quest::faction( 62,3 );
    quest::faction( 317,3 );
    quest::faction( 282,3 );
   
  }
}