sub EVENT_SAY {

if ($text =~/Hail/i)
{ plugin::Whisper("Greetings $name. I have been sent to aid you on your journey! Would you like a [cure], a [buff] or I can [bind] you to this location."); }
if ($text=~/cure/i) { quest::selfcast(3297); }

if ($text=~/buff/i) {quest::selfcast(276);}
if ($text=~/buff/i) {quest::selfcast(278);}
if ($text=~/buff/i){ quest::selfcast(219);}
if ($text=~/buff/i) {quest::selfcast(368);}
if ($text=~/buff/i){quest::selfcast(146);}
if ($text=~/buff/i){quest::selfcast(148);}
if ($text=~/buff/i){quest::selfcast(279);}
if ($text=~/buff/i){quest::selfcast(129);}
if ($text=~/bind/i) { quest::selfcast(35); }
}


