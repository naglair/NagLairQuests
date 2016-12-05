sub EVENT_SAY { 
if($text=~/Hail/i){
	my $random = int(rand(5));
	if($random == 0){
	plugin::Whisper("Heh?  What's yer name?  $name?  Never heard of ya.  Now quit breathin' on me and buy us some [drinks]!"); }
	if($random == 1){
	plugin::Whisper("Outta my way, ya big lummox!"); }
	if($random == 2){
	plugin::Whisper("Time to drain the [dragon]..  If ya know what I mean..  Bwah ha ha ha."); }
	if($random == 3){
	plugin::Whisper("You know you love me."); }
	if($random == 4){
	plugin::Whisper("Hey Fishboy! You dropped something! Bwah ha ha ha! Better start learning [Skippy]."); }	
}
if($text=~/what drinks/i){
plugin::Whisper("<BURP!>  Yeah.  Gimme a..  <BURP!> er..  honey mead."); }
if($text=~/Who is Skippy/i){
plugin::Whisper("Skippy? You mean that fish farmer? Heh heh heh. What a moron. And his brother [Beren] has the nerve to actually threaten ME!?.. Burp.. Bah. Remind me to tell [Kane] about that steaming pile of gnoll dung."); }
if($text=~/Who is Beren/i){
plugin::Whisper("Don't even mention that weakling's name. He.. burp.. Keeps threatening me. ME! Trumpy IRONTOE!!! Peh! That useless son of a goblin had better wise up and realize that in this burg if you ain't with [Kane], you are against him. And if you are against him.. burp.. you ain't nothing but a corpse."); }
if($text=~/Who is kane/i){
plugin::Whisper("Ah.. burp.. that piece of cr.. eh? Oh its you.. Kane runs this burg.. or at least he will.. if [Sragg] can get his act together."); }
if($text=~/Sragg/i){
plugin::Whisper("Where did you hear that name?!? Not from me! I didn't say nothing about Sragg or those Bloodsabers or their dang temple in the sewers! Get away from me ya hobgoblins! I don't wants no trouble!"); }
}
sub EVENT_TIMER { 
my $random = int(rand(4));	
	if($random == 0){
	plugin::Whisper("Outta my way, ya big lummox!"); }
	if($random == 1){
	plugin::Whisper("Time to drain the [dragon]..  If ya know what I mean..  Bwah ha ha ha."); }
	if($random == 2){
	plugin::Whisper("You know you love me."); }
	if($random == 3){
	plugin::Whisper("Hey Fishboy! You dropped something! Bwah ha ha ha!"); }	
}
sub EVENT_ITEM { 
if (plugin::check_handin(\%itemcount, 13033 =>4 )) {
 
plugin::Whisper("Beh!  Thanks, Skippy.  Why don't ya buy yourself one?  And..  <GULP>.. <BURP!>.. get me another!");
quest::faction(33,1);
quest::faction(217,-1);
quest::faction(53,1);
quest::faction(135,-1);
quest::faction(164,1); }
plugin::return_items(\%itemcount);
}
sub EVENT_SPAWN { 
quest::settimer(1,60);
}
#END of FILE Zone:qeynos  ID:1014 -- Trumpy_Irontoe 

