
sub EVENT_SAY {

if($text=~/Hail/i){

plugin::Whisper("Hello.  Please feel free to browse.  We make the finest boots in all of Antonica.");
}
if ($text =~/I need treant wood/i){
plugin::Whisper ("Looking for Treant material? I do not work with such material. Ask Rodgar. I believe he is upstairs.");
}
}

#END of FILE Zone:qeynos2  ID:2056 -- Gerault_Takenmaul 

