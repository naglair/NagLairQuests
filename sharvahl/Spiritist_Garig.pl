my $count = 0;

sub EVENT_SAY {
  if ($text=~/hail/i){
    plugin::Whisper("Hail and well met, $name. If you need any assistance, please ask one of my apprentices. They are here to help.");
  }
}

sub EVENT_SPAWN {
  quest::settimer("spirit",8);
}

sub EVENT_TIMER {
  $count++;
  if ($count == 1) {
    plugin::Whisper("The energy that is gathered here is quite soothing. As you both progress in your studies, you will learn to sense it as well.");
  }
  if ($count == 2) {
    quest::signalwith(155215,1,1);
  }
  if ($count == 3) {
    plugin::Whisper("Nay, though I cannot say for sure, I have a feeling that this energy is of an entirely different nature.");
  }
  if ($count == 4) {
    quest::signalwith(155215,2,1);
  }
  if ($count == 5) {
    plugin::Whisper("The energy's nature is obscured from me at this time, but I have a few theories. We are experiencing another period of change. Our contact with the Old World can only mean that the spirits are wishing us to move forward, once again.");
  }
  if ($count == 6) {
    quest::signal(155214,1);
  }
  if ($count == 7) {
    plugin::Whisper("Perhaps, Omosh, perhaps... Khati Sha explored a large portion of this place, but did he not disappear? Have the spirits not grown mute? Is our purpose here merely to wage war on the savage little creatures of the forest or is there a greater threat? There are still plenty of questsons before us, students. Please take some time to think them over.");
    quest::settimer("spirit",450);
  }
  if ($count == 8) {
    $count = 0;
    quest::settimer("spirit",8);
  }
}

#END of FILE Zone:sharvahl  ID:155219 -- Spiritist_Garig