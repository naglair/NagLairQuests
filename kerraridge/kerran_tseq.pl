sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Errr. You smell funny. You bring us [toy]?");
  }
  if ($text=~/toy/i) {
    plugin::Whisper("You go, bring us gnome toy. You not come back or we eat you and then you die like short one. Gnome toy! You bring. You good person.");
  }
  sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 6344 => 1)) {
      plugin::Whisper("Rreeee! Great toy. Shiny. We not need this old toy anymore. You take. Now go way, this our toy, we play.");
      quest::summonitem(13748);
      quest::faction( 175, 20);
    }
  }
}