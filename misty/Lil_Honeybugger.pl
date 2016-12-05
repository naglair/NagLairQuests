#############
#Quest Name:Honey Jum
#Author:Shaznito
#NPCs Involved:Lil Honeybugger, Kizzie_Mintopp 
#Items Involved:3 Honeycombs, 30 gold
#################

sub EVENT_SAY { 

if($text=~/Hail/i){

plugin::Whisper("Hello. My brother Joogl is a great bixie hunter.  No one can smash bixies like my brother.  He is the best.  He works for [Kizzie Mintopp].");

}

if($text=~/who is kizzie mintopp/i){

plugin::Whisper("Kizzie owns the Herb Shop in Rivervale. She is the keeper of the [honey jum recipe].");

}

if($text=~/what honey jum recipe/i){

plugin::Whisper("I do not know, but it tastes good on bixie crunchies.  Kizzie makes it with the honeycombs my brother collects from the bixies."); 

 }
}