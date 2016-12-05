sub EVENT_SAY{

my $qeynos = quest::saylink ("Qeynos",1);
my $east_freeport = quest::saylink ("East Freeport", 1);
my $west_freeport = quest::saylink ("West Freeport", 1);
my $halas = quest::saylink ("Halas", 1);
my $erudin = quest::saylink ("Erudin", 1);
my $surefall = quest::saylink ("Surefall Glade", 1);
my $rivervale = quest::saylink ("Rivervale", 1);
my $akanon = quest::saylink ("Akanon", 1);
my $felwithe = quest::saylink ("Felwithe", 1);
my $kaladim = quest::saylink ("Kaladim", 1);
my $kelethin = quest::saylink ("Kelethin", 1);
my $oggok = quest::saylink ("Oggok", 1);
my $grobb = quest::saylink ("Grobb", 1);
my $neriak = quest::saylink ("Neriak", 1);
my $nektulos = quest::saylink ("Nektulos Forest", 1);
my $lavastorm = quest::saylink ("Lavastorm Mountains", 1);
my $hub = quest::saylink ("Hub", 1);

if ($text =~/Hail/i)
{
plugin::Whisper(" Greetings, $name. I could send you to. [$qeynos], [$east_freeport], [$west_freeport], [$halas], [$erudin],[$surefall], [$rivervale], [$akanon], [$felwithe],[$kaladim],[$kelethin],[$oggok], [$grobb], [$neriak], [$lavastorm], [$nektulos], or [$hub]?");
}

if ($text =~/Kaladim/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone(kaladima);
}

if ($text =~/Kelethin/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (gfaydark);
}

if ($text =~/Hub/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (guildhall);
}

if ($text =~/Akanon/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (steamfont);
}

if ($text =~/Nektulos/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (nektulos);
}

if ($text =~/Grobb/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (innothule);
}

if ($text =~/Oggok/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (feerrott);
}

if ($text =~/Felwithe/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (felwithea);
}

if ($text =~/East Freeport/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (freporte);
}

if ($text =~/West Freeport/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (freportw);
}

if ($text =~/Qeynos/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (qeynos2);
}

if ($text =~/Neriak/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (neriakb);
}

if ($text =~/Halas/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (everfrost);
}
if ($text =~/Rivervale/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (misty);
}

if ($text =~/Surefall Glade/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (qrg);
}

if ($text =~/Lavastorm/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (lavastorm);
}

if ($text =~/Erudin/i)
{
quest::emote ("opens a portal and kicks you through it.");
quest::zone (tox);
}

}