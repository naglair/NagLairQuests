########################################################################
## Name: Spigot the Trusted
## Quest: A Lich's Nightmare
## Description: Allow players to unlock level 61-65
## Author: Wrathfulone
## Last Edited: 07-27-2016
## Note: Will not deal with a player at all without them wearing a Halo of Benevolence (132540)
##

sub EVENT_SAY {
	if ($client->GetItemIDAt(2) == 132540) {
		if ($qglobals{"levelquest"} == 7) {
			if ($text =~ /Hail/i) {
				quest::emote ("examines you head to toe.");
				plugin::Whisper (	"Hi, hello, greetings, welcome $name.  So very nice to meet you.  ".
									"What would you like made today?  I have Everlasting Batteries, Shaking Rigid Rod of Thunders, I have ".
									"it all.  Or perhaps you have seen my ".quest::saylink("brother", 1, "[brother]")." in your ".
									"travels?");
				$client->SetEntityVariable("levelquestdialog", 1);
			}
			elsif ($text =~ /brother/i && $client->GetEntityVariable("levelquestdialog") == 1) {
				plugin::Whisper (	"Oh, me, oh, my, yes, my brother Scholar Felim.  Have you heard of him? Or, oh my, are you ".
									"performing an ".quest::saylink("errand", 1, "[errand]")." for him?");
				$client->SetEntityVariable("levelquestdialog", 2);
			}
			elsif ($text =~ /errand/i && $client->GetEntityVariable("levelquestdialog") == 2) {
				plugin::Whisper (	"I figured as much, you have that certain, um, look about you.  Is he in need of a ".
									"special ".quest::saylink("device", 1, "[device]")."?");
				$client->SetEntityVariable("levelquestdialog", 3);
			}
			elsif ($text =~ /device/i && $client->GetEntityVariable("levelquestdialog") == 3) {
				plugin::Whisper (	"Eek, so he is in need of a Brain Resuscitator?  I no longer have any more ".
									"though, I will definitely ".quest::saylink("build", 1, "[build]")." one ".
									"if that is what he needs.");
				$client->SetEntityVariable("levelquestdialog", 4);
			}
			elsif ($text =~ /build/i && $client->GetEntityVariable("levelquestdialog") == 4) {
				plugin::Whisper (	"A Brain Resuscitator is one of my most complicated inventions.  Its pieces are ".
									"nearly just as complex.  However, if you bring them to me, I will fashion them ".
									"together to create what you need.  Take heed, the three pieces are only found among the ".
									"oldest living creatures of Norrath.  Stay safe as you'll have to defeat the lords ".
									"that reside their and deal with their scaled difficulty.  Hurry though!  I'm certain ".
									"Felim would have suggested great haste.");
				$client->SetEntityVariable("levelquestdialog", 0);
				$client->SetGlobal("levelquest", 8, 5, "F");
			}
		}
		else {
			quest::emote ("smiles at you.");
			quest::say ("Nice day isn't it $name.");
		}
	}
	else { # Client isnt wearing a Halo of Benevolence
		quest::emote ("sneers at you.");
	}
} 

sub EVENT_ITEM {
	if ($client->GetItemIDAt(2) == 132540) { #This means you need to wear the halo
		if (plugin::check_handin(\%itemcount, 132549 => 1, 132550 => 1, 132551 => 1)) { #This means you need to have the three items.
			if ($qglobals{"levelquest"} == 8) {#This means you completed the prior steps in the quest.
				quest::emote ("gleems with excitement!");
				plugin::Whisper (	"Wonderful!  It is not everyday I get to test my skills.  I see you came back with ".
									"only a few bumps and bruises.  I would definitely get those tended to!  However, ".
									"as promised, here is your Brain Resuscitator.  Now please be sure to remind Felim ".
									"that my device will only function on a brain that has been imbued with the soul of ".
									"a very powerful druid!  But, um, but please don't tell him I told you to remind him!");
				quest::summonitem (132548);
				$client->SetGlobal("levelquest", 9, 5, "F");
			}
			else {#If you get this you either A. Didnt wear the halo. B. handed in the right items without the flag. C. Didn't have the required global
				quest::emote ("begins jumping up and down in joy!");
				quest::say ("However did you know?  I know exactly what I will make with these and it will sell fast.  Thank you!");
			}
		}
	}
	else {
		quest::emote("appears surprised.");
		quest::say ("Interesting, but you can have them back.");
		plugin::return_items(\%itemcount);
	}
}