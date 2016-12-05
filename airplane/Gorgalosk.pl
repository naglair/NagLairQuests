sub EVENT_SAY {
   if($text=~/hail/i) {
     plugin::Whisper("Greetings, $name. This is my domain and I hope you have a peaceful stay. That is, unless the [lunatic sent you].");
     }
   if($text=~/lunatic sent me/i) {
     plugin::Whisper("Oh, I see. I suppose you [want these cursed markers] that lunatic made me hold?");
     }
   if($text=~/cursed markers/i) {
     plugin::Whisper("I am afraid that I can not just give them away. The lunatic had them cursed. They make me do [strange things]");
     }
   if($text=~/strange things/i) {
     plugin::Whisper("Like ATTACK you!");
     quest::attack($name);
     }
}




sub EVENT_DEATH_COMPLETE {



   $x = $npc->GetX();

   $y = $npc->GetY();

   $z = $npc->GetZ();

   $sirran= undef;

   
   quest::setglobal("sirran",3,3,"M10");

   quest::spawn( 71058, 0, 0, $x, $y, $z);
} 