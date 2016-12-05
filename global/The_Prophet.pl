
sub set_data {
#cheap hack to reload our variables
$wage_start = 3;		#minutes before paymeny required.
$wage_rate = 10;	#in platinum
$wage_duration = 30*60;		#in minutes
#spells avaliable: {name, spell_id, cost}
@spells = (
[ "sow", 278, 1 ],
[ "pinzarn", 487, 1 ],
[ "bramble", 517, 1 ],

[ "soc", 220, 5 ],
[ "naltron", 487, 5 ],
[ "bramble", 518, 5 ]

);
}

sub EVENT_SPAWN {
	&set_data;
	my $min = 3;
	quest::settimer("pay$mname", $min*60);
	plugin::Whisper("$mname at your service, I need payment within $min minutes.");
#	quest::setglobal("balance", $balance, 2, "H6");
}

sub EVENT_TIMER {
	&set_data;
	if($balance < $wage_rate) {
		plugin::Whisper("Goodbye.");
		quest::depop_withtimer();
		quest::stoptimer("pay$mname");
	} else {
		$balance -= $wage_rate;
		quest::settimer("pay$mname", $wage_duration*60);
		plugin::Whisper("Payment received, im yours for another $wage_duration minutes.");
		quest::setglobal("balance", $balance, 2, "H6");
	}
}

sub EVENT_SAY {
	&set_data;
	if(!$balance) {
		$balance = 0;
	}
	
	if($text =~ /bye/i) {
		plugin::Whisper("Goodbye.");
		quest::depop_withtimer();
		quest::stoptimer("pay$mname");
	} elsif($text =~ /follow/i) {
		$npc->SetFollowID($client->GetID());
	} elsif($text =~ /stop/i) {
		$npc->SetFollowID(0);
	} elsif($text =~ /cast ([a-zA-Z0-9]+)/i) {
		my $found = 0;
		my $s;
		foreach $s (@spells) {
			if($s->[0] eq $1) {
				if($balance < $s->[2]) {
					plugin::Whisper("You do have not paid me enough to cast that.");
					last;
				}
				$balance -= $s->[2];
				quest::setglobal("balance", $balance, 2, "H6");
				plugin::Whisper("Casting spell ".$s->[1]." named ".$s->[0]." for ".$s->[2]." platinum.");
				#have the client self-cast to allow beneficial spells.
				$client->CastSpell($s->[1], $client->GetID());
				$found = 1;
				last;
			}
		}
		if(!$found) {
			plugin::Whisper("Unable to find a spell named $1");
		}
	} elsif($text =~ /balance/i) {
		plugin::Whisper("You have a balance of $balance platinum avaliable");
	} elsif($text =~ /spells/i) {
		my $s;
		foreach $s (@spells) {
			plugin::Whisper("I can cast spell ".$s->[1]." named ".$s->[0]." for ".$s->[2]." platinum.");
		}
	} elsif($text =~ /help/i) {
		plugin::Whisper("follow|stop - tell the npc to follow you or stop following you.");
		plugin::Whisper("balance - report your balance");
		plugin::Whisper("spells - list the spells avaliable for casting");
		plugin::Whisper("cast [spellname] - request a spell casting");
		plugin::Whisper("bye - tell the npc to go away");
	} else {
		plugin::Whisper("I dont understand that, just ask for [help] if you need it.");
	}
}

sub EVENT_ITEM {
	&set_data;
	my $money = ($copper + $silver*10 + $gold*100 + $platinum*1000)/1000;
	$balance = $balance + $money;
	
	plugin::Whisper("You have a balance of $balance platinum avaliable");
}


