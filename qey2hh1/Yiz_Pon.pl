#Hollow Skull

sub EVENT_SAY {
 if($text=~/Hail/i){
   plugin::Whisper("$name! Make it quick I am in a [hurry].");
}
if($text=~/hurry/i){
   plugin::Whisper("I was in Paw receantly and stole a skull and now an [assassin] is hunting me down, even after returning the skull to him.");
}
if($text=~/assassin/i){
   plugin::Whisper("Look $name, I don't have time to talk! If you want to help me deliver this [message].");
}
if($text=~/what message/i){
   plugin::Whisper("Hurry now and take this to my brother, Hyrill Pon in Freeport, and before you go take that skull back from the assassin");
   quest::summonitem(18010);
   quest::spawn2(12182,0,0,-15188.57,1270.43,68.72,109.0);
   quest::emote("oh no, there he is!");
   
 }
}

#END of FILE zone: ID:12167 -- Yiz_Pon.pl 