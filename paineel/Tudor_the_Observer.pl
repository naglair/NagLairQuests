########################################################################
## Name: Tudor the Observer
## Quest: A Lich's Nightmare
## Description: Allow players to unlock level 61-65
## Author: Wrathfulone
## Last Edited: 07-27-2016
##

sub EVENT_SAY {
	if ($text =~ /startover/i) {
		if ($qglobals{"levelquest"} < 3) {
			quest::delglobal("levelquest");
			plugin::Whisper ("A Lich's Nightmare quest has been reset!");
		}
		else {
			plugin::Whisper ("You are too far progressed to reset this quest!");
		}
	}
	if ((not defined $qglobals{"levelquest"}) || ($qglobals{"levelquest"} < 1)) {
		if ($text =~ /Hail/i) {
			quest::emote ("clears his throat.");
			plugin::Whisper (	"Indeed traveler, hail and well met!  My name is Tudor.  Tudor the Observer.  ".
								"Would you happen to be an ".quest::saylink("adventurer", 1, "[adventurer]")." seeking ".
								"the common knowledge shared by my kind?");
			$client->SetEntityVariable("levelquestdialog", 1);
		}
		elsif ($text =~ /adventurer/i && $client->GetEntityVariable("levelquestdialog") == 1) {
			plugin::Whisper (	"I've seen adventurers come and go throughout my lifetime.  Many of whom ".
								"care not of the expansive ".quest::saylink("knowledge", 1, "[knowledge]")." we ".
								"have to share thus limiting themselves! It's a truly a shame.");
			$client->SetEntityVariable("levelquestdialog", 2);
		}
		elsif ($text =~ /knowledge/i && $client->GetEntityVariable("levelquestdialog") == 2) {
			plugin::Whisper (	"Glorious be the day!  I've found a traveler who wishes to ".
								quest::saylink("further", 1, "[further]")." themselves intellectually!");
			$client->SetEntityVariable("levelquestdialog", 3);
		}
		elsif ($text =~ /further/i && $client->GetEntityVariable("levelquestdialog") == 3) {
			plugin::Whisper (	"$name, before you can begin your quest of higher knowledge, let me make ".
								"a ".quest::saylink("gift", 1, "[gift]")." for you, that I have made for all ".
								"others that have come before you.");
			$client->SetEntityVariable("levelquestdialog", 4);
		}
		elsif ($text =~ /gift/i && $client->GetEntityVariable("levelquestdialog") == 4) {
			plugin::Whisper (	"Yes, a token of our new founded friendship.  However, I require ".
								quest::saylink("items", 1, "[items]")." in order to fashion the gift ".
								"together.");
			$client->SetEntityVariable("levelquestdialog", 5);
		}
		elsif ($text =~ /items/i && $client->GetEntityVariable("levelquestdialog") == 5) {
			plugin::Whisper (	"A very short list of items, rest assured.  I require only an iron circlet ".
								"in which was once stolen from me so long ago.  It is surely ".
								quest::saylink("rusted", 1, "[rusted]")." by the seas and the sun anymore.  ".
								"Serves those evil lich right if it has!");
			$client->SetEntityVariable("levelquestdialog", 6);
		}
		elsif ($text =~ /rusted/i && $client->GetEntityVariable("levelquestdialog") == 6) {
			plugin::Whisper (	"Oh surely it has by now, though, it is of no consequence as I have the means ".
								"to restore it to its fullest luster, so long as I have a sphere of the brightest ".
								"light.");
			$client->SetGlobal("levelquest", 1, 5, "F");
			$client->SetEntityVariable("levelquestdialog", 0);
		}
	}
	elsif ($qglobals{"levelquest"} > 1) {
		if ($text =~ /Hail/i) {
			plugin::Whisper (	"Hello again $name!  I hope you are learning many great things in your travels!");
		}
	}
	elsif ($qglobals{"levelquest"} == 1) {
		if ($text =~ /Hail/i) {
			if (plugin::check_hasitem($client, 10400)) {
				plugin::Whisper (	"Hello $name!  I see you carry with you the light.  If you have returned ".
									"with my stolen iron circlet as well, let me have both items so that I can craft ".
									"your gift.");
			}
			else {
				plugin::Whisper (	"No such luck then $name?  Keep searching and you'll find them.  I know ".
									"a dedicated adventurer when I see one!");
			}
		}
	}
}

sub EVENT_ITEM {
	if (plugin::check_handin(\%itemcount, 10400 => 1, 132541 => 1)) {
		if ($qglobals{"levelquest"} == 1) {
			plugin::Whisper (	"There it is!  After all this while, you've returned it to me.  As a token of my ".
								"appreciatiation and newly founded friendship, I give this to you.  May it open many ".
								"doors to the minds of others for you, high and low, in every trench or grotto.");
			quest::summonitem (132540);
			$client->SetGlobal("levelquest", 2, 5, "F");
		}
		else {
			quest::say ("I'll take those!  You should not dabble in that of which you have no knowledge, ".
						"for it can be dangerous!");
			foreach my $inpc ($entity_list->GetNPCList()) {
				if ($inpc->GetRace() == 36) { $inpc->AddToHateList($client,1000); }
			}
		}
	}
	else {
		quest::emote("appears confused.");
		quest::say ("Oh, that's quite alright, you keep that.  I have no need for it.");
		plugin::return_items(\%itemcount);
	}
}