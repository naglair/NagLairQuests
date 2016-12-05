sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Hi. How are you? The fish are biting pretty good. That is what Skipynn tells me. I sure wish I had a different [job]. If I did, I could fish all day long.");
  }
  if ($text=~/job/i) {
    plugin::Whisper("I am a messenger for [Antonius Bayle], ruler of the great city of [Qeynos].");
  }
  if ($text=~/qeynos/i) {
    plugin::Whisper("Huh?! Have you been living in a cave? The great city of Qeynos is the mightiest nation in Antonica! You'd best journey toward the west and visit the city whose influence stretches beyond the horizons.");
      }
      if ($text=~/antonius bayle/i) {
        plugin::Whisper("How can it be that you do not know of Antonius Bayle? Was it not he who named this great continent of Antonica? Is it not he who rules over the most powerful city on Norrath? Surely you jest!");
      }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13087 =>1 )) {
    plugin::Whisper("Aaahhhh. Now that is refreshing. Just let me rest for a bit. The note is safe and sound in my bedroll inside the inn.");
    quest::faction( 184,1 );
    quest::faction( 86,-1 );
    quest::faction( 105,-1 );
    quest::faction( 311,1 );
    quest::faction( 258,1 );
    quest::spawn2(21136,0,0,2750,-307,-62);
  }
  plugin::return_items(\%itemcount);
}