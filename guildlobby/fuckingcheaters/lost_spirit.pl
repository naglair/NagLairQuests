
sub EVENT_SAY {
my $go = quest::saylink ("go",1);
my $me = quest::saylink ("me", 1);
my $realm = quest::saylink ("realm", 1);
my $dreams = quest::saylink ("dreams", 1);
my $ready = quest::saylink ("ready", 1);
my $trouble = quest::saylink ("trouble", 1);
my $awaitedusthere = quest::saylink ("awaited us there", 1);
###########################
#  Ring 1 Quest           #
###########################

if($text=~/hail/i)
	{
	if (defined($qglobals{credit})) 			{
	#exists
	if (($qglobals{credit})<1) {
      #quest::setglobal("credit",1,0,"F");
	  	plugin::Whisper("Would you help save my [$realm]? or are you having [$trouble] zoning in?");
							}
		
		if (($qglobals{credit})>0) {
  
	  	plugin::Whisper(" You are one step closer to freeing me... you saved my spirit in the torn [$realm] now save my  haunted [$dreams].or are you having [$trouble] zoning in?");
								   }
											    }
    else {
	#does not exist
      quest::setglobal("credit",0,5,"F");
	  	plugin::Whisper("This is the first time you've spoken to me. Would you help save my [$realm]?");
		}
	}




		

  
  if ($text=~/reset/i) {
    	#quest::setglobal("credit",0,0,"F");
  }


		 
	  if ($text=~/trouble/i) {
	 plugin::Whisper(" Note: If you are having trouble and are using UF client. Copy all files with 'delveb' from titanium or SoD build to your UF directory. Or check the website nagafen.guildlaunch.com for a copy of the files.");
   }

 
	
  
  if ($text=~/realm/i) {
    plugin::Whisper("Long ago when the gods were at war, there was a terrible rift in the universe. My friends and I went to investigate. Little did we know what [$awaitedusthere]");
  }
  if ($text=~/awaited us there/i) {
    plugin::Whisper("The gods were split. The gods you see here are only a fraction as powerful as they once were. The main strength of the gods was imprisoned in this plane, trapped forever in time that does not flow like normal time. It's a wicked place, and death surely awaits you as it awaited [$me]");
  }
  
   if ($text=~/me/i) {
    plugin::Whisper("I was betrayed there. My life and my story. I cannot remeber, all I can feel is vengeance.  Terrible pulling that will never let me rest so long as my betrayer lives. Will you [$go] there and slay him? ~ WARNING~ This zone is intended for at least 1+ Group of well-trained players. ~WARNING~");
  }
  if ($text=~/go/i) {
    plugin::Whisper("Good luck...." );
	quest::movepc(342,-149,-318,20);
  }
  if ($text=~/dream/i) {
    plugin::Whisper("Save my dreams.... Come into my mind and free my endless thoughts. Are you [$ready]?" );
  }
    if ($text=~/ready/i) {
	if(($qglobals{credit})>0) 
		{
	plugin::Whisper("The Second Raid Zone Is Under Construction. Check Back Later!");
	 #quest::movepc(241,251,33,5);
		}
		if(($qglobals{credit})<1) 
		{
	 plugin::Whisper("You need to earn my trust first. Help save my [$realm] and then I can take you elsewhere.");
		}
		
   
  }

}


sub EVENT_ITEM {

#malachite
if(plugin::check_handin(\%itemcount,1389 => 1)) {
#quest::setglobal("credit",1,5,"F");
plugin::Whisper("Release....Cannot come yet. Much left to do, but take this! ");
my $a = quest::ChooseRandom(31851,31852,31853,31854,31855,31856,31857,31858,31859,31860,31861,31862,31863);
quest::summonitem($a); 

}
else {
plugin::return_items(\%itemcount);
plugin::Whisper("My incorporeal form does not understand...");
}


}