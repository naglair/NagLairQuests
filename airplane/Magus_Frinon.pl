sub EVENT_SAY { 

if($text=~/Hail/i){

plugin::Whisper("Greetings, $name.  Have you come here to test your abilities as a magician?");
 }
if($text=~/magician/i) {
  plugin::Whisper("Choose your tester. Frederic or Roanis.");
  }
      if(($text=~/Frederic/i) && ($class eq "Magician")){
        plugin::Whisper("I will summon him for you then");
        quest::spawn2(71088,0,0,614.5,1304.1,-766.9,255);
        quest::depop();
        }
      if(($text=~/Roanis/i) && ($class eq "Magician")){
        plugin::Whisper("I will summon him for you then");
        quest::spawn2(71094,0,0,614.5,1304.1,-766.9,255);
        quest::depop();
        }

}

#END of FILE Zone:airplane  ID:3375 -- Magus_Frinon 



