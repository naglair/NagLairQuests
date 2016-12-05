

sub EVENT_SAY {
my $levels = quest::saylink ("levels",1);
my $train = quest::saylink ("train", 1);
my $levelfifty = quest::saylink ("level 50", 1);

if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I can train your skills to - 290 - for you, but it will cost 2000 platinum "); 

}



}

 
sub EVENT_ITEM{
 #Counts each row for the While
  if ($platinum !=2000) {
 plugin::Whisper("That's the wrong amount.");
 quest::givecash($copper,$silver,$gold,$platinum );
 }
 
	
	
  if ($platinum ==2000) {
   quest::setskill("0", 290);
  quest::setskill("1", 290);
quest::setskill("2", 290);
quest::setskill("3", 290);
quest::setskill("4", 290);
quest::setskill("5", 290);
quest::setskill("6", 290);
quest::setskill("7", 290);
quest::setskill("8", 290);
quest::setskill("9", 290);
quest::setskill("10", 290);
quest::setskill("11", 290);
quest::setskill("12", 290);
quest::setskill("13", 290);
quest::setskill("14", 290);
quest::setskill("15", 290);
quest::setskill("16", 290);
quest::setskill("17", 290);
quest::setskill("18", 290);
quest::setskill("19", 290);
quest::setskill("20", 290);
quest::setskill("21", 290);
quest::setskill("22", 290);
quest::setskill("23", 290);
quest::setskill("24", 290);
quest::setskill("25", 290);
quest::setskill("26", 290);
quest::setskill("27", 290);
quest::setskill("28", 290);
quest::setskill("29", 290);
quest::setskill("30", 290);
quest::setskill("31", 290);
quest::setskill("32", 290);
quest::setskill("33", 290);
quest::setskill("34", 290);
quest::setskill("35", 290);
quest::setskill("36", 290);
quest::setskill("37", 290);
quest::setskill("38", 290);
quest::setskill("39", 290);
quest::setskill("40", 290);
quest::setskill("41", 290);
quest::setskill("42", 290);
quest::setskill("43", 290);
quest::setskill("44", 290);
quest::setskill("45", 290);
quest::setskill("46", 290);
quest::setskill("47", 290);
quest::setskill("48", 290);
quest::setskill("49", 290);
quest::setskill("50", 290);
quest::setskill("51", 290);
quest::setskill("52", 290);
quest::setskill("53", 290);
quest::setskill("54", 290);
quest::setskill("55", 290);
quest::setskill("56", 290);
quest::setskill("57", 290);
quest::setskill("58", 290);
quest::setskill("59", 290);
quest::setskill("60", 290);
quest::setskill("61", 290);
quest::setskill("62", 290);
quest::setskill("63", 290);
quest::setskill("64", 290);
quest::setskill("65", 290);
quest::setskill("66", 290);
quest::setskill("67", 290);
quest::setskill("68", 290);
quest::setskill("69", 290);
quest::setskill("70", 290);
quest::setskill("71", 290);
quest::setskill("72", 290);
quest::setskill("73", 290);



			
	
  }
  

 }
 
 
 
 