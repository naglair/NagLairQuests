sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hail, $name. The Mining Journal has all the news fit fer dwarven eyes to feast upon.");
  }
}
#END of FILE Zone:kaladimb  ID: -- Marsha_Stonepenner