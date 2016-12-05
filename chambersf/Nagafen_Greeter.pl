#code for my server greeter
my $detunecost = 6000;
sub EVENT_SAY {

my $book = quest::saylink ("book", 1);
my $adventure = quest::saylink ("adventure", 1);
my $grouping = quest::saylink ("grouping", 1);
my $spells = quest::saylink ("spells", 1);
my $skills = quest::saylink ("skills", 1);
my $travel = quest::saylink ("travel", 1);
my $server_vision = quest::saylink ("server vision", 1);
my $unattune = quest::saylink ("unattuning items", 1);
my $copyflags = quest::saylink ("copy flags", 1);
my $copyflags2 = quest::saylink ("i am ready. give us a one time flag copy.", 1);
my $fixzoneflags = quest::saylink("fix our zone flags, please!",1);
if ($text =~/Hail/i)
{
	plugin::Whisper("Hello, $name. Welcome to Nagafen's Lair (ReReborn - by Sailfish).");
	plugin::Whisper("You are about to embark upon a unique [$adventure] unlike any other. Would you like to know about [$grouping], [$skills], [$spells], [$travel] or [$server_vision]? ");
	plugin::Whisper("Perhaps you'd like to know about [$unattune]? "); 
	plugin::Whisper("Maybe you would to [$copyflags] to another character?");
	plugin::Whsiper("For more information, Have a look at our message board: http://tinyurl.com/jmu4u7r ");
}


if ($text =~/book/i)
 {
plugin::Whisper ("Then thou shall have mine");
 }
if ($text =~/adventure/i)
 {
plugin::Whisper("On this sever, you unlock each expansion by killing the big bad boss guys of the current expansion. So to unlock Kunark requires you to kill Vox, Nagafen, Phinny, Cazic and Innothule. Each expansion is unlocked by each person for himself.");
plugin::Whisper("Talk to any of the Keeper's over there to understand your current progress.");
plugin::Whisper("While the maximum level is 65, you cannot pass beyond level 60 without completing a special quest! To begin your 65 journey seek out an evil erudite teacher who is willing to help you.")
 }
if ($text =~/grouping/i)
 {
plugin::Whisper ("Mobs are scaled to make solo easy, but group XP bonus has been cranked waaay up! Grouping will gain xp much faster than solo. 2-boxing is allowed.");
 }
if ($text =~/spells/i)
 {
plugin::Whisper ("Good News, The gods have taken pity on your soul! All of your spells and skills are learned automatically!");
 }
if ($text =~/skills/i)
 {
plugin::Whisper ("All spells and skills are automatically maxxed when leveling up!");
 }
if ($text =~/travel/i)
 {
plugin::Whisper ("The Robed Erudite behind me can port you to classic zones. As you unlock expansions, their Keepers can port you as well.");
 }

 if ($text =~/unattuning items/i)
 {
plugin::Whisper ("Hand me an item it'll be unattuned for ". $detunecost ." pp. It's that simple ( 'No Trade Attuned' to 'Attuneable'). DO NOT GIVE ME MONEY, JUST THE ITEM.");
 }
 
if ($text =~/server vision/i)
 {
plugin::Whisper ("I built this place because I want to enjoy the experience of starting anew, to take my time going through the expansions slowly, and enjoying all the content as it was released. I invite you to share the journey with us. I promise you will not beat this game in 6 months, so surrender to it. There are plenty of servers out there to powergame to the end in a week. This is not one of those. Youre in our world now.");
 }
if ($text =~/copy flags/i) {
	plugin::Whisper("This will copy all of your quest and character flags to a 2nd character.");
	plugin::Whisper("You must be lvl 65 for this to work! Also you can only do this ONE TIME!!!!!");
	plugin::Whisper("If you wish to proceed, form a group of 2 characters. You and the character you want your flags copied to!");
	plugin::Whisper("Then say [$copyflags2]");
	if (defined $qglobals{"did_copy_flags"}) {
		plugin::Whisper("Also for you, i can [$fixzoneflags] Since you have already used your character flag copy.")
	}
	#flag for client that he is the source
	plugin::SEV($client,"cf_source",1);
}
if ($text =~/i am ready. give us a one time flag copy./i) {
	if(quest::getlevel(0) < 65) {
		plugin::Whisper("Sorry, this feature is for experience characters only, achieve level 65 first!");
		return;
	}
	if(defined $qglobals{"did_copy_flags"}) {
		plugin::Whisper("Copied zone Flags for you!");
		plugin::Whisper("Sorry, your character is not eligable for this.");
		return;
	}
	#step 1 find source
	my $copy_source = plugin::REV($client,"cf_source");
	if ($copy_source != 1) {
		plugin::Whisper("Please follow the text prompts from the beginning. !");
		return;
	}
	#ok we got the source, see if client is in a group of 2
	my $src_id = $client->CharacterID();
	my $dst_id = -1;
	my $group = $entity_list->GetGroupByClient($client);
	my $dst_pc;
	if ($group) { 
		if($group->GroupCount() != 2) {
			plugin::Whisper("You should be in a group of only 2 people. You and the person to get your flags!");
			return;
		}
		for ($count = 0; $count < $group->GroupCount(); $count++) {
			$dst_pc = $group->GetMember($count);
			if($dst_pc->CharacterID() != $src_id) {
				$dst_id = $dst_pc->CharacterID();
			}
		}
		quest::write("DOFLAGS.txt", "Trying flags for: (". $src_id . " to " . $dst_id .").");
		quest::emote("Please hold very still while I perform this delicate operation! (". $src_id . " to " . $dst_id .").");
		#ok we have src and dest
		plugin::CopyZoneFlags($client,$src_id,$dst_id);
		my $cf_resl = plugin::CopyFlags($client,$src_id,$dst_id);
		plugin::Whisper("I copied ". $cf_resl . " flags!");
		if($cf_resl > 0) {
			$client->SetGlobal("did_copy_flags",1,5,"F");
			$client->SetGlobal("did_copy_zone_flags",1,5,"F");
			$dst_pc->SetGlobal("did_copy_flags",1,5,"F");
			$dst_pc->SetGlobal("did_copy_zone_flags",1,5,"F");
			plugin::SEV($client,"cf_source",0);
			plugin::Whisper("Succes, your flags have been copied!");
			plugin::Whisper("PLEASE LOG OUT AND BACK INTO THE SERVER IMMEDIATELY OR YOUR FLAGS MAY NOT SAVE.");
			plugin::Whisper("PLEASE LOG OUT AND BACK INTO THE SERVER IMMEDIATELY OR YOUR FLAGS MAY NOT SAVE.");
			quest::write("DOFLAGS.txt", "Finished flags for: (". $src_id . " to " . $dst_id .").");
			return;
		}
	}
	else{
		plugin::Whisper("You need to be in a group with the character you want flagged!");
		return;
	}
}
if ($text =~/fix our zone flags, please!/i) {
	if(quest::getlevel(0) < 65) {
		plugin::Whisper("Sorry, this feature is for experience characters only, achieve level 65 first!");
		return;
	}
	if(defined $qglobals{"did_copy_zone_flags"}) {;
		plugin::Whisper("Sorry, your character is not eligable for this Zone flag fix.");
		return;
	}
	#step 1 find source
	my $copy_source = plugin::REV($client,"cf_source");
	if ($copy_source != 1) {
		plugin::Whisper("Please follow the text prompts from the beginning. !");
		return;
	}
	#ok we got the source, see if client is in a group of 2
	my $src_id = $client->CharacterID();
	my $dst_id = -1;
	my $group = $entity_list->GetGroupByClient($client);
	my $dst_pc;
	if ($group) { 
		if($group->GroupCount() != 2) {
			plugin::Whisper("You should be in a group of only 2 people. You and the person to get your flags!");
			return;
		}
		for ($count = 0; $count < $group->GroupCount(); $count++) {
			$dst_pc = $group->GetMember($count);
			if($dst_pc->CharacterID() != $src_id) {
				$dst_id = $dst_pc->CharacterID();
			}
		}
		quest::write("DOFLAGS.txt", "Trying ZONE flags for: (". $src_id . " to " . $dst_id .").");
		quest::emote("Please hold very still while I perform this delicate operation! (". $src_id . " to " . $dst_id .").");
		#ok we have src and dest
		my $cf_resl = plugin::CopyZoneFlags($client,$src_id,$dst_id);
		plugin::Whisper("I copied ". $cf_resl . " Zone flags!");
		if($cf_resl > 0) {
			$client->SetGlobal("did_copy_zone_flags",1,5,"F");
			$dst_pc->SetGlobal("did_copy_zone_flags",1,5,"F");
			plugin::SEV($client,"cf_source",0);
			plugin::Whisper("Succes, your ZONE flags have been copied!");
			plugin::Whisper("PLEASE LOG OUT AND BACK INTO THE SERVER IMMEDIATELY OR YOUR FLAGS MAY NOT SAVE.");
			plugin::Whisper("PLEASE LOG OUT AND BACK INTO THE SERVER IMMEDIATELY OR YOUR FLAGS MAY NOT SAVE.");
			quest::write("DOFLAGS.txt", "Finished ZONE flags for: (". $src_id . " to " . $dst_id .").");
			return;
		}
	}
	else{
		plugin::Whisper("You need to be in a group with the character you want flagged!");
		return;
	}
}
}

sub EVENT_ITEM
{
	my $cost = $detunecost * 1000;
	my $size = keys %itemcount;
	if (($platinum > 0) or ($gold > 0)) {
		plugin::Whisper("Don't give me money! It will be taken directly from your inventory.");
		$client->AddMoneyToPP(0, 0, $gold, $platinum, 1);
		$platinum = undef;
		$gold = undef;
		plugin::return_items(\%itemcount);
		return;
	}	
	elsif($size > 2) {
		plugin::Whisper("Woo woo, 1 at a time there buddy! ");
		plugin::return_items(\%itemcount);
		return;
		
	}
	elsif ($client->GetCarriedMoney() < $cost ) {
		plugin::Whisper("Your a bit short on cash there, I think some Hill Giants in Rathe Mountains need to chat with you.");
		plugin::return_items(\%itemcount);
		return;
	}
	elsif ($client->GetCarriedMoney() >= $cost) {
		#ok Player has the money, lets try this
		my $utresl = plugin::val('$item1_attuned') + plugin::val('$item2_attuned') + plugin::val('$item3_attuned') + plugin::val('$item4_attuned');
		#if this is true, then the item IS attuned
		if ($utresl == 1) {
			#attempt un-attuning
			my $utresl2 = plugin::unbind_items(\%itemcount);
			if ($utresl2 > 0) {
				$client->TakeMoneyFromPP($cost, 1);
				return;
			}
			else {
				plugin::Whisper("Sorry, im a bit confused, please show your item there to a GM so he can help you.");
				plugin::return_items(\%itemcount);
				return;
			}
		}
		else {
			plugin::Whisper("That item is not Attuned!");
			plugin::return_items(\%itemcount);
			return;
		}
	}
	else {
		plugin::return_items(\%itemcount);
	}
}