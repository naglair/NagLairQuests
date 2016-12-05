sub EVENT_SPAWN {
	quest::stopalltimers();
	quest::settimer ("heartbeat",4);
}

sub EVENT_TIMER {
	if ($timer eq "heartbeat") {
		@dlist = $entity_list->GetClientList();
		foreach $dclient (@dlist) {
			if ((defined $dclient->GetEntityVariable("delevel")) && ($dclient->GetEntityVariable("delevel") == 1)) {
				$dclient->Message (	115,$npc->GetCleanName." says, 'Wrong!  There is no such feature on this server.  So if you need to do a little ".
									"hard work to achieve a goal, get used to it.  But here lets set you to level 1 ".
									"again.'");
				$dclient->Message (15, "Welcome to level 1!");
				$dclient->Message (13, "You LOST ".(abs(1 - $dclient->GetLevel()))." levels! You are now level 1!");
				$dclient->SetEntityVariable("delevel", 2);
			}
			elsif ((defined $dclient->GetEntityVariable("delevel")) && ($dclient->GetEntityVariable("delevel") == 2)) {
				quest::gmsay ("---------------------------------------------------------------------------", 15, 1, 0, 0);
				quest::gmsay ("".$dclient->GetCleanName()." tried to level via You Win, now kicking. ", 11, 1, 0, 0);
				quest::gmsay ("---------------------------------------------------------------------------", 15, 1, 0, 0);	
				$dclient->WorldKick();
			}
		}
	}
}

sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		plugin::Whisper (	"Hello $name!  Time's are tough and things on this server can be rough.  Rather than earning ".
							"your way, leaving you with a sense of accomplishment, why not just ".quest::saylink("skip",1,"[skip]").
							"all that nonsense and instantly get level 65 with top Dragon gear?");
	}
	elsif ($text =~ /skip/i) {
		plugin::Whisper (	"Indeed!  Let's skip all that nonsense.  Just ".quest::saylink("confirm",1,"[confirm]").
							"this is what you want, as there is no reversing this decision!!");
	}
	elsif ($text =~ /confirm/i) {
		plugin::Whisper (	"Confirmation made.  Give me a moment...");
		$client->SetEntityVariable("delevel", 1);
	}
}