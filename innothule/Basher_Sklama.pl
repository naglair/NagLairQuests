sub EVENT_AGGRO {
  plugin::Whisper("I shall pluck you limb from limb!!");
}

sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Me hear dat dere are humans, elves and other weaklings hunting in da swamp."); }
}

sub EVENT_SLAY {
  plugin::Whisper("Those who play with da Basher always gets bashed good!!");
}

#END of FILE Zone:innothule  ID:228 -- Basher_Sklama 

