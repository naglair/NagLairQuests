#zone: gunthak NPC: Ramma_Poddin (224206)
#Angelox

sub EVENT_SAY { 
  if ($text=~/hail/i) {
    #plugin::Whisper("You do not appear to be a native of Broken Skull. Have you been sent for transport?");
    quest::emote("eyes you warily before saying, 'You do not appear to be a native of Broken Skull. Have you been sent for transport?'");
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I do not need this.");
  plugin::return_items(\%itemcount);
}