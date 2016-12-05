use strict;
use warnings;
sub CreateI {
    my ($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt) = (shift, shift, shift, shift, shift, shift, shift, shift);
    my $material;
    chomp $name;
    $name =~ s/\'/\\'/ig;
    open my $file, ">>$name Armor.sql";
    my $n = 0;
    my $slot = 0;
    my %typeHash = (1 => ["Hood", "Robe", "Wristlet", "Covers", "Pantaloons", "Slippers", "Gloves"],
    2 => ["Visor", "Chain Body", "Bracelet", "Shoulderpads", "Greaves", "Boots", "Gauntlets"],
    3 => ["Helmet", "Breastplate", "Bracer", "Vambraces", "Greaves", "Boots", "Gauntlets"],
    4 => ["Cap", "Cheststraps", "Wristband", "Armbands", "Pants", "Shoes", "Gloves"]);
    my @slotArray = (4, 131072, 1536, 128, 262144, 524288, 4096);        
    my @materialArray = (10, 11, 12, 13, 14, 15, 16);
    my %classesHash = (1 => 15360, 2 => 33544, 3 => 151, 4 => 16480);
    my %iconsHash = (1 => [639, 838, 638, 670, 631, 525, 517],
    2 => [625, 538, 620, 543, 630, 545, 526],
    3 => [628, 624, 516, 622, 540, 524, 531],
    4 => [640, 632, 637, 634, 635, 633, 636]);
    foreach my $type (sort {$a <=> $b} keys %typeHash) {
        foreach my $item (@{$typeHash{$type}}) {
            $material = (($type == 1 && $item eq "Robe") ? $materialArray[rand @materialArray] : $type);
            print "ID: $id Name: $name $item Type: $item\n";
            my $query = "INSERT INTO `items` SET `id` = '$id', ";
            $query .= "`name` = '$name $item', ";
            $query .= "`slots` = '" . $slotArray[$slot] . "', ";
            $query .= "`classes` = '" . $classesHash{$type} . "', ";
            $query .= "`icon` = '" . $iconsHash{$type}[$n] . "', ";
            $query .= "`material` = '$material', ";
            $query .= "`hp` = '$health', ";
            $query .= "`mana` = '$health', ";
            $query .= "`endur` = '$health', ";
            $query .= "`regen` = '" . int($health / 10) . "', ";
            $query .= "`manaregen` = '" . int($health / 10) . "', ";
            $query .= "`enduranceregen` = '" . int($health / 10) . "', ";
            $query .= "`ac` = '$ac', ";
            $query .= "`attack` = '$ac', ";
            $query .= "`aagi` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`acha` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`adex` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`aint` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`asta` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`astr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`awis` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`cr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`dr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`fr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`mr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`pr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`svcorruption` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`heroic_agi` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_cha` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dex` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_int` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_sta` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_str` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_wis` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_cr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_fr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_mr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_pr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_svcorrup` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`spellshield` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`strikethrough` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`stunresist` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`clairvoyance` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`dsmitigation` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`healamt` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`spelldmg` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`itemtype` = '10', ";
            $query .= "`nodrop` = '0', ";
            $query .= "`races` = '65535', ";
            $query .= "`idfile` = 'IT63', ";
            $query .= "`augslot1visible` = '1', ";
            $query .= "`augslot2visible` = '1', ";
            $query .= "`augslot3visible` = '1', ";
            $query .= "`augslot4visible` = '1', ";
            $query .= "`augslot5visible` = '1', ";
            $query .= "`magic` = '1', ";
            $query .= "`norent` = '1', ";
            $query .= "`stacksize` = '1', ";
            $query .= "`clickeffect` = '-1', ";
            $query .= "`proceffect` = '-1', ";
            $query .= "`worneffect` = '-1', ";
            $query .= "`scrolleffect` = '-1', ";
            $query .= "`maxcharges` = '-1', ";
            $query .= "`unk132` = '-1';\n";
            print $file $query;
            $query = "";
            $id++;
            $n++;
            $slot++;
        }
        $n = 0;
        $slot = 0;
    }
    CreateA($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt);
    close $file;
    return;
}

sub CreateA {
    my ($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt) = (shift, shift, shift, shift, shift, shift, shift, shift);
    open my $file, ">>$name Accessories.sql";
    my $n = 0;
    my $slot = 0;
    my %typeHash = (1 => ["Visor", "Ear Ring", "Necklace", "Pauldrons", "Cloak", "Ring", "Girdle"],
    2 => ["Mask", "Hoop", "Choker", "Covers", "Cape", "Band", "Belt"]);
    my @slotArray = (8, 18, 32, 64, 256, 98304, 1048576);
    my %classesHash = (1 => 33245, 2 => 32290);
    my %iconsHash = (1 => [506, 535, 848, 626, 663, 615, 503],
    2 => [528, 757, 505, 664, 658, 616, 719]);
    foreach my $type (sort {$a <=> $b} keys %typeHash) {
        foreach my $item (@{$typeHash{$type}}) {
            print "ID: $id Name: $name $item\n";
            my $query = "INSERT INTO `items` SET `id` = '$id', ";
            $query .= "`name` = '$name $item', ";
            $query .= "`slots` = '" . $slotArray[$slot] . "', ";
            $query .= "`classes` = '" . $classesHash{$type} . "', ";
            $query .= "`icon` = '" . $iconsHash{$type}[$n] . "', ";
            $query .= "`hp` = '$health', ";
            $query .= "`mana` = '$health', ";
            $query .= "`endur` = '$health', ";
            $query .= "`regen` = '" . int($health / 10) . "', ";
            $query .= "`manaregen` = '" . int($health / 10) . "', ";
            $query .= "`enduranceregen` = '" . int($health / 10) . "', ";
            $query .= "`ac` = '$ac', ";
            $query .= "`attack` = '$ac', ";
            $query .= "`aagi` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`acha` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`adex` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`aint` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`asta` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`astr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`awis` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`cr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`dr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`fr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`mr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`pr` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`svcorruption` = '" . (($stats > 127) ? 127 : $stats) . "', ";
            $query .= "`heroic_agi` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_cha` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dex` = '" . (($heroic_stats > 10) ? 10 : $heroic_stats) . "', ";
            $query .= "`heroic_int` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_sta` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_str` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_wis` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_cr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_dr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_fr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_mr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_pr` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`heroic_svcorrup` = '" . (($heroic_stats > 100) ? 100 : $heroic_stats) . "', ";
            $query .= "`spellshield` = '" . (($combat_stats > 127)? 127 : $combat_stats) . "', ";
            $query .= "`strikethrough` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`stunresist` = '" .  (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`dsmitigation` = '" . (($combat_stats > 127) ? 127 : $combat_stats) . "', ";
            $query .= "`clairvoyance` = '" . ($combat_stats > 127 ? 127 : $combat_stats) . "', ";
            $query .= "`healamt` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`spelldmg` = '" . (($healamt > 32767) ? 32767 : $healamt) . "', ";
            $query .= "`itemtype` = '10', ";
            $query .= "`nodrop` = '0', ";
            $query .= "`races` = '65535', ";
            $query .= "`idfile` = 'IT63', ";
            $query .= "`augslot1visible` = '1', ";
            $query .= "`augslot2visible` = '1', ";
            $query .= "`augslot3visible` = '1', ";
            $query .= "`augslot4visible` = '1', ";
            $query .= "`augslot5visible` = '1', ";
            $query .= "`magic` = '1', ";
            $query .= "`material` = '0', ";
            $query .= "`norent` = '1', ";
            $query .= "`stacksize` = '1', ";
            $query .= "`clickeffect` = '-1', ";
            $query .= "`proceffect` = '-1', ";
            $query .= "`worneffect` = '-1', ";
            $query .= "`scrolleffect` = '-1', ";
            $query .= "`maxcharges` = '-1', ";
            $query .= "`unk132` = '-1';\n";
            print $file $query;
            $id++;
            $n++;
            $slot++;
        }
        $n = 0;
        $slot = 0;
    }
    print "Done! ";
    close $file;
    return;
}
print "Hello, what would you like the name in front of your items to be?\n";
my $name = <STDIN>;
print "Okay, what would you like the starting ID to be?\n";
my $id = int(<STDIN>);
print "What would you like to set the health modifier on the items to?\n";
my $health = int(<STDIN>);
print "What would you like to set the armor class on the items to?\n";
my $ac = int(<STDIN>);
print "What would you like to set the stat modifier on the items to?\n";
my $stats = int(<STDIN>);
print "What would you like to set the heroic stat modifier on the items to?\n";
my $heroic_stats = int(<STDIN>);
print "What would you like to set the combat stats modifier on the items to?\n";
my $combat_stats = int(<STDIN>);
print "What would you like to set the heal amount and spell damage on the items to?\n";
my $healamt = int(<STDIN>);
print "Okay, thank you!\n";
CreateI($name, $id, $health, $ac, $stats, $heroic_stats, $combat_stats, $healamt);