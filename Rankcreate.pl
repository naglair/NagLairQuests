use Roman;
sub CreateRanked {
    my $n = shift;
    $n =~ s/\'/\\'/ig;
    open my $file, ">$n.sql";
    my $r = shift;
    my $id = shift;
    my $q = "INSERT INTO `items` (";
    $q .= "`id`, `name`, ";
    $q .= "`ac`, `attack`, ";
    $q .= "`hp`, `mana`, `endur`, ";
    $q .= "`aagi`, `acha`, `adex`, `aint`, `asta`, `astr`, `awis`, ";
    $q .= "`heroic_agi`, `heroic_cha`, `heroic_dex`, `heroic_int`, `heroic_sta`, `heroic_str`, `heroic_wis`, ";
    $q .= "`cr`, `dr`, `fr`, `mr`, `pr`, `svcorruption`, ";
    $q .= "`heroic_cr`, `heroic_dr`, `heroic_fr`, `heroic_mr`, `heroic_pr`, `heroic_svcorrup`, ";
    $q .= "`spelldmg`, `healamt`, ";
    $q .= "`combateffects`, `damageshield`, `dotshielding`, `spellshield`, `strikethrough`, `stunresist`, `dsmitigation`, ";
    $q .= "`nodrop`, `norent`, `loregroup`, ";
    $q .= "`slots`, `unk132`, `classes`, `races`, `icon`, `idfile`, ";
    $q .= "`clickeffect`, `proceffect`, `worneffect`, `scrolleffect`, ";
    $q .= "`augslot" . $_ . "type`, `augslot" . $_ . "visible`, " for (1..5);
    $q .= "`lore`, `serialized`, `verified`, `serialization`, `created`) VALUES\n";
    for ($i = 1; $i <= $r; ++$i) {
        my $hme = GetHME($i);
        my $sdha = GetSDHA($i);
        my $cs = GetCS($i);
        my $s = GetS($i);
        my $sad = GetSAD($i);
        my $h = GetH($i);
        my $had = GetHAD($i);
        $q .= "('" . ($id + $i) . "', '$n " . Roman($i) . "', ";
        $q .= "'$i', '$i', ";
        $q .= "'$hme', '$hme', '$hme', ";
        $q .= "'$sad', '$s', '$sad', '$s', '$s', '$s', '$s', ";
        $q .= "'$had', '$h', '$had', '$h', '$h', '$h', '$h', ";
        $q .= "'$s', '$s', '$s', '$s', '$s', '$s', ";
        $q .= "'$h', '$h', '$h', '$h', '$h', '$h', ";
        $q .= "'$sdha', '$sdha', ";
        $q .= "'$cs', '$cs', '$cs', '$cs', '$cs', '$cs', '$cs', ";
        $q .= "'0', '1', '-1', ";
        if ($i != $r) {
            $q .= "'4194304', '-1', '65535', '65535', '2258', 'IT63', '-1', '-1' ,'-1', '-1', '0', '1', '0', '1', '0', '1', '0', '1', '0', '1', '', '', '', '', ''),\n";
        } elsif ($i == $r) {
            $q .= "'4194304', '-1', '65535', '65535', '2258', 'IT63', '-1', '-1' ,'-1', '-1', '0', '1', '0', '1', '0', '1', '0', '1', '0', '1', '', '', '', '', '');";
            say $file $q;
        }
    }
    close $file;
}

sub GetS {
    return (($_[0] > 127) ? 127 : $_[0]);
}

sub GetSAD {
    return (($_[0] > 10) ? 10 : $_[0]);
}

sub GetH {
    return 0 if $_[0] <= 250;
    return ((($_[0] - 250) > 100) ? 100 : ($_[0] - 250));
}

sub GetHAD {
    return 0 if $_[0] <= 250;
    return ((($_[0] - 250) > 10) ? 10 : ($_[0] - 250));
}

sub GetHME {
    my %h = (5 => [1..24],
    10 => [25..49],
    25 => [50..99],
    50 => [100..249],
    100 => [250..3000]);
    foreach my $key (keys %h) {
        return ($_[0] * $key) if ($_[0] ~~ @{$h{$key}});
    }
}

sub GetSDHA {
    my %h = (1 => [25..49],
    3 => [50..99],
    5 => [100..249],
    10 => [250..499],
    20 => [500..749],
    30 => [750..999],
    40 => [1000..1249],
    50 => [1250..1499],
    100 => [1500..1749],
    150 => [1750..1999],
    200 => [2000..2249],
    250 => [2250..2500],
    500 => [2500..3000]);
    return 0 if ($_[0] < 25);
    foreach my $key (keys %h) {
        return int($_[0] + $key) if ($_[0] ~~ @{$h{$key}});
    }
}

sub GetCS {
    my %h = (25 => [25..49],
    50 => [50..74],
    75 => [75..99],
    100 => [100..3000]);
    return 0 if ($_[0] < 25);
    foreach my $key (keys %h) {
        return $key if ($_[0] ~~ @{$h{$key}});
    }
}
print "Name?\n";
my $n = <STDIN>;
$n =~ s/\s+$//;
print "Ranks?\n";
my $r = int(<STDIN>);
print "Starting ID?\n";
my $id = int(<STDIN>);
CreateRanked($n, $r, $id);