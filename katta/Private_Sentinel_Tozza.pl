sub EVENT_AGGRO{
   plugin::Whisper("You have trespassed where you are not welcome! Prepare to face your punishment!");
}

sub EVENT_SIGNAL{
   if($signal == 1){
      plugin::Whisper("Fool!! You know not what you have released upon us!! Nathyn will have your heads for this!!");
   }
}