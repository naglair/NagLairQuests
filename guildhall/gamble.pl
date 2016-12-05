#Casino Test Script
#Black Jack
#NPC NAME: Shifty Eyed Jack
#Script Compilation of Bront/Gummi and <3 Vaion for his help


sub EVENT_SAY {
my $npcname = $npc->GetCleanName();

if ($text =~/Hail/i) {
	$client->Message(14,"$npcname wrings his hands together in anticipation.");
	plugin::Whisper("Step Right up $name!  Do you want to try your luck at a game of black jack?  One hand only!  50 Platinum per hand, Beat the Dealer and double your bet! A 21 will quadruple your bet!  Come on now, don't you want to play?  How could you not?!");
	}
}

sub EVENT_ITEM {

my $NPCName = $npc->GetCleanName();
my %Card = (
"1" => "One",
"2" => "Two",
"3" => "Three",
"4" => "Four",
"5" => "Five",
"6" => "Six",
"7" => "Seven",
"8" => "Eight",
"9" => "Nine",
"10" => "Ten",
"11" => "Jack",
"12" => "Queen",
"13" => "King",
"14" => "Ace"
);



if ($platinum == 50) {
	plugin::Whisper("Excellent Lets Deal!");
	$client->Message(14,"$NPCName deals the cards...");
	$card1value = int(rand(14));
	$card2value = int(rand(14));
	my $firstcard = $Card{$card1value};
	my $secondcard = $Card{$card2value};
	plugin::Whisper("You have a $firstcard and $secondcard");
	if ($card1value > 10) {
		$card1value = 10;
		}
		if ($card2value > 10) {
			$card2value = 10;
			}
			elsif ($card1value == 14) {
				   $card1value == 11;
				   }
				   elsif($card2value == 14) {
						 $card2value == 11;
						 }
	my $total = $card1value + $card2value;
	plugin::Whisper("$total");
		my $dcard1value = int(rand(14));
		my $dcard2value = int(rand(14));
		my $dfirstcard = $Card{$dcard1value};
		my $dsecondcard = $Card{$dcard2value};
			plugin::Whisper("I have have a $dfirstcard and $dsecondcard");
			if ($dcard1value > 10) {
				$dcard1value = 10;
				} elsif ($dcard1value == 14) {
							$dcard1value == 11;
							}
				if ($dcard2value >10) {
					$dcard2value = 10;
					} elsif ($dcard2value == 14) {
							 $dcard2value == 11;
							}
			my $dtotal = $dcard1value + $dcard2value;
			plugin::Whisper("$dtotal");
			if($total >= 22) {
				plugin::Whisper("Bust");
				}
				elsif($total == 21) {
					plugin::Whisper("BlackJack!");
					quest::givecash(0,0,0,200);
				}
				elsif($total > $dtotal && $total < 21) {
						plugin::Whisper("You win!");
						quest::givecash(0,0,0,100);			
					}
					elsif($total < $dtotal && $total <21 && $dtotal <=21) {
						plugin::Whisper("Dealer Wins!  You lose!");
						}
						elsif ($total < 21 && $dtotal > 21) {
							plugin::Whisper("Dealer Busts!  You win!");
							}
							elsif ($total == $dtotal) {
								  plugin::Whisper("Tie! House is in a good mood heres your money back!");
								  quest::givecash(0,0,0,50);
								  }
		
						
}
}