# NPC: Droga Mobs
# Angelox

sub EVENT_COMBAT{
    my $random_result = int(rand(100));
    if(($combat_state == 1) &&($random_result<=20)){
    plugin::Whisper("The time has come for you to taste the might of my magic");
    }elsif(($combat_state == 1) &&($random_result<=40)){
    plugin::Whisper("The spirits are on my side! It is unwise of you to be here!");
    }elsif(($combat_state == 1) &&($random_result<=60)){
    plugin::Whisper("How dare you enter our realm!");
    }elsif(($combat_state == 1) &&($random_result<=80)){
    plugin::Whisper("The spirits are on my side! It is unwise of you to be here!");
    }elsif($combat_state == 1){
    plugin::Whisper("I shall bathe in the blood of you and your fellows!");}
}

sub EVENT_DEATH_COMPLETE{
 quest::emote("'s corpse tries to mumble one last spell before falling over dead.");
 }

# Droga Mobs
