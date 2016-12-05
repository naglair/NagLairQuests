sub EVENT_SAY {
my $AAPTS = $client->GetAAPoints();


 if($text=~/hail/i && $AAPTS < 10){
  plugin::Whisper("Greetings! Less than 10 AA's, you have $AAPTS");
 }
  elsif($text=~/hail/i && $AAPTS > 9){
   plugin::Whisper("Greetings! 10 or more AA's, you have $AAPTS");
 }
 elsif($text=~/AA/i){
  plugin::Whisper("$AAPTS"); 
 }
  elsif($text=~/ADD/i){
  $client->SetAAPoints($client->GetAAPoints() + 1);
  plugin::Whisper("$AAPTS"); 
 }
  elsif($text=~/SUB/i){
  $client->SetAAPoints($client->GetAAPoints() - 1);
  plugin::Whisper("$AAPTS"); 
 }
} 


