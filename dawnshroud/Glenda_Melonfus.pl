sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Hello there $name. Did Kanthek send you to me?'");
}
if($text=~/yes kanthek sent me/i){
plugin::Whisper("Ahh. so you're interested in the Galorians then? Good to hear. The Galorians seem to be at war with the [Dawnhoppers]. The Galorians are known as the Sambata Tribe. I heard that they once lived in the caves behind us. but that all changed when the Dawnhoppers grew in numbers.'");
}
if($text=~/what dawnhoppers?/i){
plugin::Whisper("The Dawnhoppers are the rockhoppers who inhabited Dawnshroud. They are a cruel bunch of hoppers. I swear. if I didn't know any better I'd think that the hoppers were out to kill every last galorian they encountered. They don't like 'em very much.'"); }
}
#END of FILE Zone:dawnshroud  ID:174097 -- Glenda_Melonfus 

