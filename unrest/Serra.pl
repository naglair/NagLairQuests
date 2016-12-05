#Zone: The Estate of Unrest
#Short Name: unrest
#Zone ID: 63
#
#NPC Name: Serra
#NPC ID: 63029
#Quest Status: finished
#

sub EVENT_SAY { 
  if ($text=~/Hail/i) {
    plugin::Whisper("H..h..hello? Can you help me? I lost [something] and I need it so I can go back home.");
  }
  if ($text=~/something/i) {
    plugin::Whisper("I never got my doll for my birthday. Before he could bring it to me I was h..hurt by the bad man. I cannot leave without my doll. Will you please help me?");
  }
  if ($text=~/doll/i) {
    plugin::Whisper("Oh goody! But... I cannot seem to remember his name. He gave me this note before I...");
    quest::emote("begins to hand you a ripped note.");
  }
  if ($text=~/note/i) {
    plugin::Whisper("I hope it will help you out. Please find him so I can leave this place.");
    quest::summonitem(20374);
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 20370 => 1)) {
    plugin::Whisper("Oh! You have the dolly! Thank you! Thank you! Thank you! I can go home now. Please give this to my father, Baenar. He will understand when he gets it.");
    quest::emote("begins to fade away.");
    plugin::Whisper("Bye bye!");
    quest::summonitem(20371);
    quest::depop();
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

#END of FILE Zone:unrest  ID:63029 -- Serra

