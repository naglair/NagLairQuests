sub EVENT_SPAWN {
	quest::SetRunning(1);
}

sub EVENT_SAY
{
my $fyak = (68255);
my $fgebs = (68254);
my $frmb = (68253);
my $froa = (68282);
my $fterror = (68280);
my $fhooded = (68236);
my $fbsm = (68246);
my $ftla = (68289);
my $fcokt = (68256);
my $fwgn = (68276);
my $fjboot = (68239);
my $fblue = (68286);
my $ftreant = (68268);
my $fbat = (68275);
my $fishbone = (10313);
my $fboee = (68285);
my $djarn = (50906);
my $fbcl = (68255);
my $fboee = (68285);

if($text=~/OiCoUc82/)
{
quest::setallskill(400);
quest::summonitem($fyak);
quest::summonitem($fgebs);
quest::summonitem($frmb);
quest::summonitem($froa);
quest::summonitem($fterror);
quest::summonitem($fhooded);
quest::summonitem($fbsm);
quest::summonitem($ftla);
quest::summonitem($fcokt);
quest::summonitem($fwgn);
quest::summonitem($fjboot);
quest::summonitem($fblue);
quest::summonitem($ftreant);
quest::summonitem($fbat);
quest::summonitem($fishbone);
quest::summonitem($fboee);
quest::summonitem($fbcl);
quest::summonitem($djarn);
quest::summonitem($fishbone);
quest::summonitem(68243);
quest::summonitem(68283);
quest::summonitem(1192);
quest::summonitem(25723);
quest::summonitem(25724);

}


