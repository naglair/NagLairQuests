#Casino Test Script
#Black Jack
#NPC NAME: Shifty Eyed Jack
 
 
sub EVENT_SAY {
my $npcname = $npc->GetCleanName();
 
if ($text =~/Hail/i) {
        $client->Message(14,"$npcname wrings his hands together in anticipation.");
        plugin::Whisper("Step Right up $name!  Do you want to try your luck at a game of black jack?  Only 50pp a play, Beat the Dealer and double your bet! A 21 will quadruple your bet!  Come on now, don't you want to play?  How could you not?!");
        }
}
 
sub EVENT_ITEM {
 
my $NPCName = $npc->GetCleanName();
%Card = (
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
        my $firstcard = $Card{int(rand(13))};
        my $secondcard = $Card{int(rand(13))};
        plugin::Whisper("You have a $firstcard and $secondcard");
        if ($firstcard eq "King" || $firstcard eq "Queen" || $firstcard eq "Jack" || $firstcard eq "Ten") {
                $value1 == 10;
                }
                elsif ($secondcard eq "King" || $secondcard eq "Queen" || $secondcard eq "Jack" || $secondcard eq "Ten") {
                my $value2 == 10;
                }
                elsif ($firstcard eq "Ace" && $value2 > 10) {
                        my $value1 == 11;
                        }
                        elsif ($secondard eq "Ace" && $value1 > 10) {
                                my $value2 == 11;
                                }
                                elsif ($firstcard eq "Ace" && $value2 < 10) {
                                        my $value1 == 1;
                                        }
                                        elsif ($secondcard eq "Ace" && $value1 < 10) {
                                                my $value2 == 1;
                                        }
                                                elsif ($firstcard eq "One") {
                                                        my $value1 == 1;
                                                }
                                                elsif ($firstcard eq "Two") {
                                                        my $value1 == 2;
                                                        }
                                                        elsif ($firstcard eq "Three") {
                                                                my $value1 == 3;
                                                                }
                                                                elsif ($firstcard eq "Four") {
                                                                        my $value1 == 4;
                                                                        }
                                                                        elsif ($firstcard eq "Five") {
                                                                                my $value1 == 5;
                                                                                }
                                                                                elsif ($firstcard eq "Six") {
                                                                                        my $value1 == 6;
                                                                                        }
                                                                                        elsif ($firstcard eq "Seven") {
                                                                                                my $value1 == 7;
                                                                                                }
                                                                                                elsif ($firstcard eq "Eight") {
                                                                                                        my $value1 == 8;
                                                                                                        }
                                                                                                        elsif ($firstcard eq "Nine") {
                                                                                                                my $value1 == 9;
                                                                                                                }
                                                                                                                elsif ($firstcard == "Ten") {
                                                                                                                        my $value1 == 10;
                                                                                                                        }
                                                                                                                        elsif ($secondcard eq "One") {
                                                                                                                                my $value2 == 1;
                                                                                                                                }
                                                                                                                                elsif ($secondcard eq "Two") {
                                                                                                                                        my $value2 == 2;
                                                                                                                                        }
                                                                                                                                        elsif ($secondcard eq "Three") {
                                                                                                                                                my $value2 == 3;
                                                                                                                                                }
                                                                                                                                                elsif ($secondcard eq "Four") {
                                                                                                                                                        my $value2 == 4;
                                                                                                                                                        }
                                                                                                                                                        elsif ($secondcard eq "Five") {
                                                                                                                                                                my $value2 == 5;
                                                                                                                                                                }
                                                                                                                                                                elsif ($secondcard == "Six") {
                                                                                                                                                                        my $value2 == 6;
                                                                                                                                                                        }
                                                                                                                                                                        elsif ($secondcard == "Seven") {
                                                                                                                                                                                my $value2 == 7;
                                                                                                                                                                                }
                                                                                                                                                                                elsif ($secondcard == "Eight") {
                                                                                                                                                                                        my $value2 == 8;
                                                                                                                                                                                        }
                                                                                                                                                                                        elsif ($secondcard == "Nine") {
                                                                                                                                                                                                my $value2 == 9;
                                                                                                                                                                                                }
                                                                                                                                                                                                elsif ($secondcard == "Ten") {
                                                                                                                                                                                                        my $value2 == 10;
                                                                                                                                                                                                        }
                                                                                        my $total == $value1 + $value2;
                                                                                        plugin::Whisper("$value1 + $value2");
               
                                                                                                                                                                                                }
                                                                                                                                                                                        }