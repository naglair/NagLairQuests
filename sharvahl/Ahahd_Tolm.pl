my $count = 0;

sub EVENT_SPAWN {
  quest::settimer("themoor",5);
}

sub EVENT_TIMER {
  $count++;
  if($count == 1) {
    plugin::Whisper("So mate, are you just in from a patrol?");
  }
  if($count == 2) {
    quest::signalwith(155122,1,1);
  }
  if($count == 3) {
    quest::signalwith(155259,1,1);
  }
  if($count == 4) {
    quest::signalwith(155122,2,1);
  }
  if($count == 5) {
    plugin::Whisper("Sure thing, mate. You know I'm sucker for good gossip.");
  }
  if($count == 6) {
    quest::signalwith(155122,3,1);
  }
  if($count == 7) {
    plugin::Whisper("Oh my! Did ya kill 'em!");
    quest::signalwith(155259,2,1);
  }
  if($count == 8) {
    quest::signalwith(155122,4,1);
  }
  if($count == 9) {
    plugin::Whisper("Bah! It couldn't get weirder. That's weird enough! Take a moment to finish your drink and then tell me what happened.");
    quest::settimer("themoor",300);
  }
  if($count == 10) {
    $count = 0;
    quest::settimer("themoor",5); 
  }
}