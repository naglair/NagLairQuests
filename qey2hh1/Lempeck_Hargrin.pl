sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Gree.. .. tings. How are you? Don't get too close to me. I have come down with something bad..");
  }
}

sub EVENT_SAY {
  if (plugin::check_handin(\%itemcount, 13954 => 1)) {
    plugin::Whisper("Thank you!! I felt the madness nearing my brain, but now I feel much better. Please take this as thanks - it is all I have to donate to Astaed Wemor. Be sure he gets it. I shall thank Rodcet Nife every day for sending help.");
    quest::summonitem(13970);
    quest::faction(257 ,30 );
    quest::faction( 183, 30);
    quest::faction( 135, 10);
    quest::faction( 21, -10);
    quest::faction( 9, 10);
    quest::exp(1000);
      }
}