#!/usr/bin/perl
 
# Level => (Cost, Buff set)
# Hash is iterated over, and as soon as player level is >= to hash level,
# cost is applied
# offers same buffs regardless of level
my %pbuffs =
(
        60 => { cost => 1000, set => 'elite' },
        40 => { cost => 350,  set => 'high' },
        20 => { cost => 50,  set => 'mid' },
        0  => { cost => 0,    set => 'low' }
);

# Buff sets. Referenced by pbuffs, changed for donator zone
my %buffset =
(
		low		=> [421,10,174,278,261,144],
        mid		 => [1598, 1776, 1693, 1939, 3692, 356, 3299, 13],
        high    => [2112, 2517, 2570, 1939, 3467, 5317, 3299, 13],
		elite	=> [1568,5504,5358,5507,1447,2524,5396,5258,3460,5513,5358]

);

# Returns pbuff value for level
# Args: level
sub getpb
{
        my $level = shift;

        foreach $key (reverse sort keys %pbuffs)
        {
                if ($level >= $key)
                {
                        return $pbuffs{$key};
                }
        }
}

# Casts buffs given a name
# Args: array of spells
sub castspells
{
        foreach $spell (@_)
        {
                quest::selfcast($spell);
        }
}

# Returns buff set for level
sub getbuffset
{
        return @{$buffset{getpb(shift)->{'set'}}};
}

sub EVENT_SAY 
{
        my $saylink1 = quest::saylink("buffs");

        my @buffs = getbuffset($ulevel);

        if ($text =~ /hail/i)
        {
                plugin::Whisper("If you want some [$saylink1] just let me know. ");
        }
        elsif ($text =~ /buffs/i)
                {
                        castspells(@buffs);
                        

                                plugin::Whisper("Here you go $name! These buffs will scale with level!");
                }
        
}
