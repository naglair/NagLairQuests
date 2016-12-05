# Coron Finisc
# gnoll paws in surefall
  sub EVENT_SAY {
 
	if($text=~/Hail/i) {
		plugin::Whisper("Hello $name have you seen any [Sabertooth Gnolls] around?");
	}
 
	if($text=~/sabertooth gnolls/i){
		plugin::Whisper("Sabertooth Gnoll are viscious gnolls of Blackburrow who attack us constantly and send patrols out into Qeynos Hills,A gnoll has even been seen in the bear caves on occasion!");
		plugin::Whisper("There is a [reward] offered if you can bring me his hide");
	}
 
	if($text=~/reward/i){
		plugin::Whisper("Yes. We are offering a small reward for slaying the stalking gnoll in the bear caves. Bring us his Paw to claim your bounty. The Jaggedpine Treefolk remember well those who aid their cause.");
	}
   }
 
   sub EVENT_ITEM{
 	if($itemcount{12169} == 1){
		plugin::Whisper("The Jagged Pine Tree Folk will never forget your actions!");
		quest::givecash("5","5","10","0");
		quest::exp(350);
		quest::faction(159,2);
	}
   }