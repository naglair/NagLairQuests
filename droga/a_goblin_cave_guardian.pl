# NPC: Droga Mobs
# Angelox

sub EVENT_COMBAT{
    my $random_result = int(rand(100));
    if(($combat_state == 1) &&($random_result<=20)){
    plugin::Whisper("Your kind is not welcome here! Prepare to die!");
    }elsif(($combat_state == 1) &&($random_result<=40)){
    plugin::Whisper("Your dead corpse will soon line my pockets with gold!");
    }elsif(($combat_state == 1) &&($random_result<=60)){
    plugin::Whisper("How dare you enter our realm!");
    }elsif(($combat_state == 1) &&($random_result<=80)){
    plugin::Whisper("I shall bathe in the blood of you and your fellows!");
    }elsif($combat_state == 1){
    plugin::Whisper("Halt! who enters here?");}
}
# Droga Mobs
