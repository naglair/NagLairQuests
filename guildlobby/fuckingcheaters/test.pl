sub EVENT_SAY
{
 $saylevel = quest::saylink("original");
my $do = quest::saylink("I want to de-lvl");
if($text=~/debug/i)
{
quest::level($originallevel);
}
if($text=~/I want to de-lvl/i && defined($qglobals{oldlevel}) && $qglobals{oldlevel} eq "hailed")
                {
                        quest::setglobal("oldlevel","Said Yes",4,"S30");
                        plugin::Whisper("Please note that any pets or buffs you currently have will be
                        removed but you can recast them after your level goes down");
                        plugin::Whisper("You have 30 seconds to decide what level you want to be, just say the desired level with me targeted.");
                }
                elsif($text>0 && $text<$ulevel && $qglobals{oldlevel} eq "Said Yes")
                {
                        quest::setglobal("oldlevel",$ulevel,4,"F");
                        $client->Duck();
                        #$client->Message(13,$client->GetEXP());
                        quest::selfcast(1285);
                        quest::selfcast(331);
                        quest::selfcast(1792);
                        quest::level($text);
                       
                        $client->Stand();
                }
                elsif($qglobals{oldlevel} eq "Said Yes" && ($text<1 || $text>$ulevel) && !($text=~/hail/i))
                {
                        $client->Message(13,"sorry that is not possible");
                        quest::delglobal("oldlevel");
                }
                elsif(defined($qglobals{oldlevel}) && $ulevel<$qglobals{oldlevel} && $text=~/hail/i)
                {
                        $originallevel=$qglobals{oldlevel};
                        plugin::Whisper("Do you want me to restore you back to your $saylevel level? ");
                }
                elsif(defined($qglobals{oldlevel}) && $ulevel<$qglobals{oldlevel} && $text=~/original/i)
                {
                        #quest::level($qglobals{oldlevel});
                        quest::level($qglobals{oldlevel});
                        $originallevel=$qglobals{oldlevel};
                        quest::delglobal("oldlevel");
                        quest::delglobal("oldexp");
                }
                elsif($text=~/hail/i)
                {
                        plugin::Whisper("Greetings $name, would you like to de-level yourself?");
                        $client->Message(13,"$do");
                        quest::setglobal("oldlevel","hailed",4,"S10");
                }
                elsif(!defined($qglobals{oldlevel}))
                {
                        $client->Message(13,"If you see this message, please hail me again.");
                }
        }