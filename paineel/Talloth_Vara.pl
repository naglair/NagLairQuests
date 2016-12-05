sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::Whisper("Greetings. $name.  You have come to the Anthenaeum Necromanita.  This place serves as the stores of knowledge for the Seekers of the [Dark Truth].");
}
if($text=~/what dark truth/i){
plugin::Whisper("The Dark Truth is what all the [necromancers] in Paineel seek to learn.  The [real truth] is far more interesting.");
}
if($text=~/what necromancers/i){
plugin::Whisper("The necromancers here are called the Seekers of the Dark Truth.  The leader of the Seekers is known as the Speaker of the Dark Truth.  The current Speaker is Coriante Verisue.  She does. however. have many [rivals].");
}
if($text=~/what rivals/i){
plugin::Whisper("I support Coriante due to my respect for her.  Many have no such respect and covet her power and position.  One such individual is Darton. the Seeker's Chief Researcher.  He is a direct descendant of [Dartain]. a hero to our people.");
}
if($text=~/who is dartain/i){
plugin::Whisper("That is a long story indeed. $name.  Many years ago. the heretics and the people of Erudin had a grand battle.  During the conflicts. great magics were performed and many catastrophic effects plagued these lands. a good example of which would be the Hole.");
}
if($text=~/what real truth/i){
plugin::Whisper("The real truth is actually a theory of mine which I believe to be true.  You see. the Seekers believe that necromancy is all that can be gained from the Dark Truth. whereas I believe it is merely a by-product."); }
}
#END of FILE Zone:paineel  ID:75077 -- Talloth_Vara 

