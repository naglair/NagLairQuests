sub EVENT_SAY
{
if($text=~/kills/i)
{
plugin::Whisper("adding kills");
quest::setglobal("Xygoz",1,5,'F');
quest::setglobal("Hoshkar",1,5,'F');
quest::setglobal("Silverwing",1,5,'F');
quest::setglobal("Severilous",1,5,'F');
quest::setglobal("Gorenaire",1,5,'F');
quest::setglobal("Trakanon",1,5,'F');
quest::setglobal("Faydedar",1,5,'F');
quest::setglobal("Talendor",1,5,'F');
quest::setglobal("Druushk",1,5,'F');
quest::setglobal("Nexona",1,5,'F');
quest::setglobal("Phara Dar",1,5,'F');
quest::setglobal("Lord Nagafen",1,5,'F');
quest::setglobal("Lady Vox",1,5,'F');
quest::setglobal("Phinigel Autropos",1,5,'F');
quest::setglobal("Cazic Thule",1,5,'F');
quest::setglobal("Innoruuk",1,5,'F');
quest::setglobal("Eye of Veeshan",1,5,'F');
quest::setglobal("ClassicPlanes",2,5,'F');
quest::setglobal("flagging", 3, 5, "F");
}
}