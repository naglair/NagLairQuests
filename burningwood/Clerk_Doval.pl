sub EVENT_DEATH_COMPLETE
{
   plugin::Whisper("All Iksar residents.. shall learn.. of my demise. Ungghh!!");
   quest::signalwith(87101,1);
}