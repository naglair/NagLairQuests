#npc - Gfaydark Guard Protectors
#zone - Gfaydark
#by Angelox

sub EVENT_COMBAT {
  if($combat_state == 1) {
    plugin::Whisper("For the defense of Kelethin!!");
    plugin::Whisper("For the protection of all Fier'Dal, there shall be no mercy for your kind.");
  }
}

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Keep a sharp eye open for those nasty orcs! I know they've been trying to get up into Kelethin, but I'm sworn to protect the elves from their dastardly deeds. Say, I've been looking for promising new recruits to help me take care of some [tasks], might you be one of them?");
  }
  if ($text=~/task/i) {
    plugin::Whisper("I need you to assist in protecting Kelethin from the orcs. Are you ready and willing?");
    quest::taskselector(166);
  }
}

sub EVENT_ITEM {
  plugin::Whisper("I do not need this.");
  plugin::return_items(\%itemcount);
}