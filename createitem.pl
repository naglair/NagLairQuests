use strict;
use warnings;
sub CreateItem {
    my ($type, $material, $name, $id, $health, $damage, $delay, $range, $stack_size, $price, $weight, $icon, $idfile, $classes, $slots, $ac, $stats, $heroic_stats,$combat_stats, $healamt, $spelldmg) = ($_[0], $_[1], $_[2], $_[3], $_[4], $_[5], $_[6], $_[7], $_[8], ($_[9] * 1000), ($_[10] <= 20 ? ($_[10] * 10) : 200), $_[11], ("IT" . $_[12]), $_[13], $_[14], $_[15], ($_[16] <= 127 ? $_[16] : 127), $_[17], ($_[18] <= 127 ? $_[18] : 127), $_[19], ($_[20] <= 100 ? $_[20] : 100));
    $name =~ s/\'/\\'/ig;
    open my $file, ">item_" . $id . ".sql";
    my $query = "INSERT INTO items ";
    $query .= "SET `itemtype` = '$type', ";
    $query .= "`material` = '$material', ";
    $query .= "`name` = '$name', ";
    $query .= "`id` = '$id', ";
    $query .= "`hp` = '$health', ";
    $query .= "`endur` = '$health', ";
    $query .= "`mana` = '$health', ";
    $query .= "`regen` = '" . int($health / 10) . "', ";
    $query .= "`enduranceregen` = '" . int($health / 10) . "', ";
    $query .= "`manaregen` = '" . int($health / 10) . "', ";
    $query .= "`damage` = '$damage', ";
    if ($type == 2 || $type == 35) {
        $query .= "`backstabdmg` = '" . ($damage * 10) . "', ";
    }
    $query .= "`delay` = '$delay', ";
    $query .= "`range` = '$range', ";
    $query .= "`stacksize` = '$stack_size', ";
    $query .= "`price` = '$price', ";
    $query .= "`weight` = '$weight', ";
    $query .= "`icon` = '$icon', ";
    $query .= "`idfile` = '$idfile', ";
    $query .= "`classes` = '$classes', ";
    $query .= "`slots` = '$slots', ";
    $query .= "`ac` = '$ac', ";
    $query .= "`aagi` = '$stats', ";
    $query .= "`acha` = '$stats', ";
    $query .= "`adex` = '$stats', ";
    $query .= "`aint` = '$stats', ";
    $query .= "`asta` = '$stats', ";
    $query .= "`astr` = '$stats', ";
    $query .= "`awis` = '$stats', ";
    $query .= "`cr` = '$stats', ";
    $query .= "`dr` = '$stats', ";
    $query .= "`fr` = '$stats', ";
    $query .= "`mr` = '$stats', ";    
    $query .= "`pr` = '$stats', ";
    $query .= "`svcorruption` = '$stats', ";
    $query .= "`heroic_agi` = '" . ($heroic_stats > 10 ? 10 : $heroic_stats) . "', ";
    $query .= "`heroic_cha` = '$heroic_stats', ";
    $query .= "`heroic_dex` = '" . ($heroic_stats > 10 ? 10 : $heroic_stats) . "', ";
    $query .= "`heroic_int` = '$heroic_stats', ";
    $query .= "`heroic_sta` = '$heroic_stats', ";
    $query .= "`heroic_str` = '$heroic_stats', ";
    $query .= "`heroic_wis` = '$heroic_stats', ";
    $query .= "`heroic_cr` = '$heroic_stats', ";
    $query .= "`heroic_dr` = '$heroic_stats', ";
    $query .= "`heroic_fr` = '$heroic_stats', ";
    $query .= "`heroic_mr` = '$heroic_stats', ";
    $query .= "`heroic_pr` = '$heroic_stats', ";
    $query .= "`heroic_svcorrup` = '$heroic_stats', ";
    $query .= "`damageshield` = '$combat_stats', ";
    $query .= "`dotshielding` = '$combat_stats', ";
    $query .= "`dsmitigation` = '$combat_stats', ";
    $query .= "`shielding` = '$combat_stats', ";
    $query .= "`spellshield` = '$combat_stats', ";
    $query .= "`strikethrough` = '$combat_stats', ";
    $query .= "`stunresist` = '$combat_stats', ";
    $query .= "`healamt` = '$healamt', ";
    $query .= "`spelldmg` = '$spelldmg', ";
    $query .= "`augslot" . $_ . "type` = '5', `augslot" . $_ . "visible` = '1', " for (1..5);
    $query .= "`races` = '65535', ";
    $query .= "`magic` = '1', ";
    $query .= "`clickeffect` = '-1', ";
    $query .= "`proceffect` = '-1', ";
    $query .= "`worneffect` = '-1', ";
    $query .= "`scrolleffect` = '-1',";
    $query .= "`nodrop` = '1', ";
    $query .= "`norent` = '1', ";
    $query .= "`unk132` = '-1';";
    print $file $query;
    close $file;
    return;
}
my %typeHash = (0 => "1H Slashing",
1 => "2H Slashing",
2 => "Piercing",
3 => "1H Blunt",
4 => "2H Blunt",
5 => "Archery",
7 => "Throwing",
8 => "Shield",
10 => "Armour",
14 => "Food",
15 => "Drink",
21 => "Potion",
22 => "Arrow",
23 => "Wind Instrument",
24 => "Stringed Instrument",
25 => "Brass Instrument",
26 => "Drum Instrument",
27 => "Ammo",
35 => "2H Piercing",
45 => "Hand to Hand",
54 => "Augment",
55 => "Augment Solvent",
56 => "Augment Distiller");
my %materialHash = (0 => "Cloth",
1 => "Leather",
2 => "Chain",
3 => "Plate",
4 => "Monk Leather",
7 => "Kunark",
10 => "Red Robes",
11 => "Black Robes",
12 => "Blue Robes",
13 => "Yellow Robes",
14 => "Green Robes",
15 => "Purple Robes",
16 => "White Robes");
print "What type of item would you like to create, the types are as follows:\n";
foreach my $key (sort {$a <=> $b} keys %typeHash) {
    print "\tType: $typeHash{$key} ID Number: $key\n";
}
my $type = int(<STDIN>);
my $material = 0;
if ($type == 8 || $type == 10 || ($type > 23 && $type < 26)) {
    print "What would you like the material of the item to be, the materials are as follows:\n";
    foreach my $key (sort {$a <=> $b} keys %materialHash) {
        print "\tMaterial: " . $materialHash{$key} . " ID Number: " . $key . "\n";
    }
    $material = int(<STDIN>);
}
print "What would you like the name of the item to be?\n";
my $name = <STDIN>;
$name =~ s/\s+$//;
print "What would you like the ID of the item to be?\n";
my $id = int(<STDIN>);
print "What would you like the health of the item to be (this value is endurance and half mana)?\n";
my $health = int(<STDIN>);
print "What would you like the damage of the item to be?\n";
my $damage = int(<STDIN>);
print "What would you like the delay of the item to be?\n";
my $delay = int(<STDIN>);
my $range = 0;
if ($type == 5 || $type == 22 || $type == 27) {
    print "What would you like the range of the item to be (if not a bow, put -1)?\n";
    $range = int(<STDIN>);
}
my $stack_size = 1;
if (($type > 13 && $type < 16) || ($type > 20 && $type < 23) || $type == 27) {
    print "What would you like the stack size of the item to be (if not an arrow or expendable item, put 1)?\n";
    $stack_size = int(<STDIN>);
}
print "What would you like the price of the item to be (in Platinum)?\n";
my $price = int(<STDIN>);
print "What would you like the weight of the item to be?\n";
my $weight = int(<STDIN>);
print "What would you like the icon of the item to be?\n";
my $icon = int(<STDIN>);
print "What would you like the idfile of the item to be (IT63 for non-weapon)?\n";
my $idfile = int(<STDIN>);
print "What would you like the classes of the item to be?\n";
my $classes = int(<STDIN>);
print "What would you like the slots of the item to be?\n";
my $slots = int(<STDIN>);
print "What would you like the armor class of the item to be?\n";
my $ac = int(<STDIN>);
print "What would you like the non-heroic stats on the item to be?\n";
my $stats = int(<STDIN>);
print "What would you like the heroic stats on the item to be?\n";
my $heroic_stats = int(<STDIN>);
print "What would you like your combat stats of the item to be?\n";
my $combat_stats = int(<STDIN>);
print "What would you like the heal amount of the item to be?\n";
my $healamt = int(<STDIN>);
print "What would you like the spell damage of the item to be?\n";
my $spelldmg = int(<STDIN>);
CreateItem($type, $material, $name, $id, $health, $damage, $delay, $range, $stack_size, $price, $weight, $icon, $idfile, $classes, $slots, $ac, $stats, $heroic_stats, $combat_stats, $healamt, $spelldmg);