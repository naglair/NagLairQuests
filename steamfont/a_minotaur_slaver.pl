#NPC: a_minotaur_slaver   Zone: steamfont
#
#Emotes & Chance to trigger Minotaur Hero spawn on death
#
#by Qadar

sub EVENT_COMBAT{
  if($combat_state == 1){
    plugin::Whisper("<Snort!!>..  Death to you! Meldrath commands!!");
  }
}

sub EVENT_DEATH_COMPLETE{
  my $random_result = int(rand(100));
  if($random_result >= 94){
    quest::unique_spawn(56152,177,0,-1294,1360,-103);
  }
  plugin::Whisper("I die soon! Meldrath, help me!");
}
