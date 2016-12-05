# NPC: Droga Mobs
# Angelox

sub EVENT_COMBAT{
 plugin::Whisper("Your soul shall be mine!");
}

sub EVENT_DEATH_COMPLETE{
 quest::emote("'s corpse tries to mumble one last spell before falling over dead.");
 }

# Droga Mobs
