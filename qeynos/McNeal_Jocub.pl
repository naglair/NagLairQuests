###################################################
# NPC: McNeal_Jocub.pl
# Part of moonstone And blackburrow stout quests
# quest items: moonstone, a case of Blackburrow Stout, A tattered note
# Zone: qeynos
# By ???????
# modified by Mitzrugi
##################################################

sub EVENT_SPAWN {
  quest::set_proximity(-304,-256,-300,-228);
}

sub EVENT_ENTER {
  plugin::Whisper("Blast!! We are running [low]!!");
}

sub EVENT_SAY { 
  if($text=~/hail/i) {
    plugin::Whisper("Good ta see ya! Now start showin' these poodlewalkers how a real fish drinks!");
  }
  if($text=~/low/i) {
    plugin::Whisper("This is going to sound crazy, but my main supplier of [Blackburrow Stout] is one of the brewers themselves. I have run too low on the fine brew and need someone to [pick up my shipment].");
  }
  if($text=~/shipment/i) {
    plugin::Whisper("Take this note to the Qeynos Hills. Somewhere there, you shall find a gnoll at night called Gnasher. Give him the note. Now, get moving!");
    quest::summonitem(18800); #Tattered Note
  }
  if($text=~/blackburrow stout/i) {
    plugin::Whisper("Keep it down!! So you've heard of Blackburrow Stout? We sell it here in Fish's Backroom. If the Qeynos Guards knew, well.. it wouldn't be such a good thing. The stout is illegal, It's made by the gnolls. It is one of the finest brews you will ever taste. If you want any.. slide me a [moonstone].");
  }
  if($text=~/moonstone/i) {
    plugin::Whisper("Looking for moonstones, are we? The only way I know of getting a moonstone is to hunt gnolls for Captain Tillin of the Qeynos Guards.");
  }
}

sub EVENT_ITEM { 
  if(plugin::check_handin(\%itemcount, 10070 => 1)) { #Moonstone
    plugin::Whisper("Here you go then. Don't go tellin' no Guards where that came from, I would hate to rid myself of a good paying customer.");
    quest::summonitem(13107,5); #Black Burrow Stout x 5
    quest::faction(167,5); #Karana Residents
    quest::faction(135,5); #Guards of Qeynos
    quest::faction(257,5); #Priests of Life
    quest::faction(183,5); #Knights of Thunder
    quest::exp(500);
  }
  elsif(plugin::check_handin(\%itemcount, 13131 => 1)) { #Case of Blackburrow Stout
    plugin::Whisper("Good work, pal. Here's a little dough to spend, just don't spend it at any other bar.");
    quest::givecash(0,0,3,9); #Platinum x 9, Gold x 3
    quest::faction(167,5); #Karana Residents
    quest::faction(135,5); #Guards of Qeynos
    quest::faction(257,5); #Priests of Life
    quest::faction(183,5); #Knights of Thunder
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}
#End of FILE Zone:qeynos  ID:1107 -- McNeal_Jocub