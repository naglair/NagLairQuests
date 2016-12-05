sub EVENT_SIGNAL {
if ($signal == 20) {
plugin::Whisper("In approximately ten minutes the portals will become active and will transport you back to Odus, Antonica, Faydwer, and Kunark.  In five minutes the portal to Velious will become active.");
}
if ($signal == 21) {
plugin::Whisper("The portal to Velious will become active in three minutes.  Please begin gathering in the portal area.");
}
if ($signal == 22) {
plugin::Whisper("One minute till teleportation to Velious.  Please be prepared to step onto the teleport pad.");
}
if ($signal == 23) {
plugin::Whisper("The portal to Velious is now active.  Please stand on the pad and you will be teleported shortly.");
plugin::Whisper("The portals to Odus, Antonica, Faydwer, and Kunark will become active in five minutes. Please begin gathering in the portal areas.");
}
if ($signal == 24) {
plugin::Whisper("As a reminder, the portals to Odus, Antonica, Faydwer, and Kunark will become active in three minutes.");
}
if ($signal == 25) {
plugin::Whisper("One minute till teleportation to Odus, Antonica, Faydwer, and Kunark. Please be prepared to step onto the teleport pad.");
}
if ($signal == 26) {
plugin::Whisper("The portals to Odus, Antonica, Faydwer, and Kunark are now active. Please stand on the pad and you will be teleported shortly. Come back soon.");
plugin::Whisper("In approximately ten minutes the portals will become active and will transport you back to Odus, Antonica, Faydwer, and Kunark.  In five minutes the portal to Velious will become active.");
}
  }