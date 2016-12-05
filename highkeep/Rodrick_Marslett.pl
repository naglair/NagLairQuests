sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Oooh.. Hello, [guard]. Please do not let the [Teir'Dal] at me again. I can take no more.");
  }
  if($text=~/guard/i) {
    plugin::Whisper("Aren't you a guard here?"); #Text made up
  }
  if($text=~/teir'dal/i) {
    plugin::Whisper("The Teir'Dal are what all elves call the dark elves, such as those vile torturers. I don't know what they are doing in Highpass.");
  }
  if($text=~/fenn kaedrick/i) {
    plugin::Whisper("Are you searching for the rogue named Fenn Kaedrick? He used to be locked in here with me. That Lady McCabe bailed him out just minutes before the Teir'Dal planned to operate on him. He said that if I ever did escape, to venture to the very roof of this keep and wait till he showed up to escort me away from here.");
    quest::unique_spawn(6184,0,0,-87,2,66,128); #Fenn Kaedrick
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I do not want that.");
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:highkeep  ID:6056 -- Rodrick_Marslett