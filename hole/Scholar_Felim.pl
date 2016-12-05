########################################################################
## Name: Scholar Felim
## Quest: A Lich's Nightmare
## Description: Allow players to unlock level 61-65
## Author: Wrathfulone
## Last Edited: 07-27-2016
## Note: Will not deal with a player at all without them wearing a Halo of Benevolence (132540)
##

sub EVENT_SAY {
	if ($text =~ /testremove/i && $status > 79) {
		quest::delglobal("levelquest");
	}

	if ($client->GetItemIDAt(2) == 132540) {
		if ($qglobals{"levelquest"} == 2) {
			if ($text =~ /Hail/i) {
				plugin::Whisper (	"Yes, yes $name.  How astute of you to speak to me.  I say, it is palpable sense  ".
									"that you would solicit my collaboration in your ".quest::saylink("search", 1, "[search]").
									" for knowledge.");
				$client->SetEntityVariable("levelquestdialog", 1);
			}
			elsif ($text =~ /search/i && $client->GetEntityVariable("levelquestdialog") == 1) {
				plugin::Whisper (	"Before we can proceed on discussion of such developed knowledge, you must first ".
									"complete an ".quest::saylink("endeavor", 1, "[endeavor]").".  From this I can assess ".
									"whether or not Tudor may have been lacking in his judgement of you.");
				$client->SetEntityVariable("levelquestdialog", 2);
			}
			elsif ($text =~ /endeavor/i && $client->GetEntityVariable("levelquestdialog") == 2) {
				plugin::Whisper (	"Furthermore, it is plainly required if you wish to ".quest::saylink("expand", 1, "[expand]").
									" upon your academics.");
				$client->SetEntityVariable("levelquestdialog", 3);
			}
			elsif ($text =~ /expand/i && $client->GetEntityVariable("levelquestdialog") == 3) {
				plugin::Whisper (	"Superb.  The elementary circumstances require that you recover the mind of an ancient ".
									"scaled Lich.  Bring me this and we shall continue.");
			$client->SetGlobal("levelquest", 3, 5, "F");
			$client->SetEntityVariable("levelquestdialog", 0);
			}
		}
		elsif ($qglobals{"levelquest"} ~~ [3,7]) {
			if ($text =~ /Hail/i) {
				quest::emote ("sighs aloud.");
				plugin::Whisper (	"I am afraid you're off to a terrible start $name if you have already forgotten your ".
									"task.");
			}
		}
		elsif ($qglobals{"levelquest"} == 6) {
			if ($text =~ /resuscitators/i) {
				plugin::Whisper (	"Why yes of course a resuscitator.  You will need to seek out my trusted brother who has ".
									"made a point to become a master of his craft.  Only with this will we be able to proceed.  ".
									"I'll keep the brain safe so that it doesn't get any more bruised than it has.  Make haste.");
				$client->SetGlobal("levelquest", 7, 5, "F");
			}
		}
		elsif ($qglobals{"levelquest"} == 9) {
			if ($text =~ /Hail/i) {
				quest::emote ("grumbles.");
				plugin::Whisper (	"Nevermind my pride.  My brother has already informed me that soul of a powerful druid was ".
									"needed to complete the resuscitation process.  Hand me the soul and resuscitator so we can  ".
									"see an end to this process.  I am very busy.");
			}
		}
	}
	else { # Client isnt wearing a Halo of Benevolence
		quest::emote ("scrutinizes your demeanor.");
		quest::say ("I conclude you are lacking.");
	}
} 

sub EVENT_ITEM {
	if ($client->GetItemIDAt(2) == 132540) {
		if (plugin::check_handin(\%itemcount, 132543 => 1)) { ## Head of Venril Sathir
			if ($qglobals{"levelquest"} == 3) {
				plugin::Whisper (	"Oh bother.  The mind $name, the mind.  Forever am I to do with this entire decapitated head?  ".
									"I suppose I should reiterate, as you are still learning.  I need the brain, hence, the mind.  ".
									"I trust that at some time in your travels you have already come across an expert at things ".
									"such as removing a brain from a head.  In the meantime, I'll send foreword so that you are ".
									"expected.");
				quest::summonitem (132543);
				$client->SetGlobal("levelquest", 4, 5, "F");
			}
			else {
				quest::say ("Rubbage.  Disgusting.  Let me dispose of that for you.");
			}
		}
		
		elsif (plugin::check_handin(\%itemcount, 132544 => 1)) {
			if ($qglobals{"levelquest"} == 6) {
				plugin::Whisper (	"I had feared as much.  She did an excellent job of preservation, however, I am sorry ".
									"to say that the brain itself is nearly dead.  In order to extract the ancient knowledge ".
									"from this, I will need to first rescusitate it.  However, it would appear that I am ".
									"completely out of ".quest::saylink("resuscitators", 1, "[Brain Resuscitators]")."");
			}
			else {
				plugin::Whisper (	"That will look nice on my shelves.  I thank you!");
			}
		}
		elsif (plugin::check_handin(\%itemcount, 132548 => 1, 132546 => 1)) {
			if ($qglobals{"levelquest"} == 9) {
				plugin::Whisper (	"Finally.  Business between you and I is complete!  I have pressing matters to address ".
									"and so many others to instruct.  Take this to the surgeon so that it may ".
									"be implanted.  I'm afraid the knowledge is just far too much for your current small ".
									"sized limited brain to comprehend.  I wish you well.  And should you forget who I am after ".
									"your transplant....");
				quest::summonitem (132545);
				$client->SetGlobal("levelquest", 10, 5, "F");
			}
		}
		else {
			quest::emote("appears bothered.");
			quest::say ((($client->GetGender() == 0) ? "Sir" : "Ma'am").", I truly have no need for that!  Please leave me be, I am extremely busy with my works.");
			plugin::return_items(\%itemcount);
		}
	}
	else {
		quest::emote("slowly blinks as if annoyed.");
		quest::say ((($client->GetGender() == 0) ? "Sir" : "Ma'am").", I truly have no need for that!  Please leave me be, I am extremely busy with my works.");
		plugin::return_items(\%itemcount);
	}
}