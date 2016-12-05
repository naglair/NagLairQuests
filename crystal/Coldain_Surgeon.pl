########################################################################
## Name: Coldain Surgeon
## Quest: A Lich's Nightmare
## Description: Allow players to unlock level 61-65
## Author: Wrathfulone
## Last Edited: 07-27-2016
##

sub EVENT_TIMER { ## cant do this as written as timer belongs to no particular player sev later to work
	quest::stoptimer("brainsurgery");
}

sub EVENT_SAY {
	if ($text =~ /testremove/i && $status > 79) {
		$client->SetGlobal("CharMaxLevel", 65, 5, "F");
	}
	
	if ($qglobals{"levelquest"} == 4) {
		if ($text =~ /Hail/i) {
			plugin::Whisper (	"Greetings, $name, I have been ".quest::saylink("expecting", 1, "[expecting]")." your ".
								"arrival for some time now.");
			$client->SetEntityVariable("levelquestdialog", 1);
		}
		elsif ($text =~ /expecting/i && $client->GetEntityVariable("levelquestdialog") == 1) {
			plugin::Whisper (	"Indeed, expecting.  Much of what I know before becoming a surgeon, I have learned from ".
								"Scholar Felim.  However, in regards to ".quest::saylink("surgery", 1, "[surgery]").", ".
								"and otherwise the transplantation of brains, the student has become the teacher.");
			$client->SetEntityVariable("levelquestdialog", 2);
		}
		elsif ($text =~ /surgery/i && $client->GetEntityVariable("levelquestdialog") == 2) {
			plugin::Whisper (	"So let's begin shall we?  Please hand me the head in which you wish to have the brain ".
								"extracted from.");
			$client->SetEntityVariable("levelquestdialog", 0);
		}
	}
	elsif ($qglobals{"levelquest"} == 10) {
		if ($text =~ /Hail/i) {
			plugin::Whisper (	"Hello again, $name.  Your journey is just about complete.  Hand me the ".
								"Imbued Brain of Venril Sathir and relax the procedure will take no time ".
								"at all, or at least any time that you will be aware of.");
		}
	}
}

sub EVENT_ITEM {
	if (plugin::check_handin(\%itemcount, 132547 => 1, 132543 => 1, 132542 => 1)) { ## Head of VS, Surgical Scalpel and Jar
		if ($qglobals{"levelquest"} == 5) {
			quest::emote ("nods.");
			plugin::Whisper ("Please remain quiet now $name, this is going to take a great deal of concentration.  ");
			quest::emote ("begins the delicate task.");
			plugin::Whisper (	"I've done it!  However, as I feared, it appears as though the brain is almost dead!  ".
								"I can only preserve it and hope that it lives.  Here take this and take it fast to ".
								"Scholar Felim.  Make haste!");
			$client->SetGlobal("levelquest", 6, 5, "F");
			quest::summonitem (132544);
		}
		else {
			quest::emote ("eyes gleem with happiness.");
			quest::say ("Woo woo hold on there, lets not get ahead of ourselves. I don't need all of those yet, just the head please!");
			plugin::return_items(\%itemcount);
		}
	}
	elsif (plugin::check_handin(\%itemcount, 132543 => 1)) { ## Head of Venril Sathir
		if ($qglobals{"levelquest"} == 4) {
			quest::emote ("looks intently upon the head.");
			plugin::Whisper (	"Hmmm, yep, but, perhaps, hmmm.  $name, I've got good news and bad news.  The good news is  ".
								"I am, in all my surgical skill splendor, able to remove the brain from this head.  However,  ".
								"the bad news is, I did not realize just who's head it was I would be performing surgery on!  ".
								"In order to complete this surgery, I am going to need a specialized surgical tool.  A tool ".
								"of which I have never had the need before.  A tool that only one with war on the mind would ".
								"have in their possession.");
			plugin::Whisper (	"Take this head back for now.  But hurry, as the brain has already begun to die!  ".
								"While looking for the tools please find a vessel for me so that I can preserve the brain once I am ".
								"able to remove it!  Once you have found those things return to me.");
			quest::summonitem (132543);
			$client->SetGlobal("levelquest", 5, 5, "F");
		}
		else {
			quest::emote ("gasps.");
			queset::say("What do I want this for?!?! Step back and listen to me more carefully!");
			plugin::return_items(\%itemcount);
		}
	}
	elsif (plugin::check_handin(\%itemcount, 132545 => 1)) {
		quest::emote ("sanatizes his hands... yet sweating at the forehead despite the cold temperatures.");
		quest::selfcast(201);
		quest::say (".");
		quest::say ("..");
		quest::say ("...");
		quest::say ("Oh dear...I've lost anoth....");
		plugin::Whisper (	"Well hello!  Welcome back.  I never doubted my abilities for a moment!");
		plugin::Whisper (	"I truly appreciate the opportunity.  For that, I'd like to give you a small token of my gratitude. ".
							"It is not much, though I hope it will assist you in your future endeavors.");
		quest::summonitem (132552);
		$client->SetGlobal("CharMaxLevel", 65, 5, "F");
		$client->SetGlobal("levelquest", 65, 5, "F");
		if (!defined $qglobals{"level65questcompleted"}) {
			quest::setglobal("level65questcompleted",1,7,"F");
			quest::gmsay("Congratulations to $name for being the first to complete the 'A Lichs Nightmare' quest!  And on ".($client->GetGender() ? "her" : "his")." new [".quest::varlink(132552)."]!'", 335, 1, 0, 0);
			plugin::Whisper (	"You are the first traveler to complete this task.  As such, we have agreed ".
								"that you have earned the title of 'the Awakened' should you choose to be ".
								"known as such.");
			quest::enabletitleset(7);
		}
		else {
			quest::gmsay("Congratulations to $name for completing the 'A Lichs Nightmare' quest!  And on ".($client->GetGender() ? "her" : "his")." new [".quest::varlink(132552)."]!'", 335, 1, 0, 0);			
		}	
	}
	else {
		quest::emote("doesn't appear to be interested in a trade.");
		quest::say ("I have no need for that.");
		plugin::return_items(\%itemcount);
	}
}