#code for my server greeter


sub EVENT_SAY {
	if($text=~/hail/i) {
		plugin::Whisper("Hello, $name. Welcome to Nagafen's Lair (ReReborn - by Sailfish).");
		plugin::Whisper("You can take a look around our glorious central hub to see what everything is about.");
		plugin::Whsiper("For more information, Have a look at our message board: http://tinyurl.com/jmu4u7r ");
	}
}

my $lastId = 0;

#sub EVENT_SPAWN {
    #Get last ID
#    $connect = plugin::LoadMysql();
#    $query = "SELECT `id` FROM qs_player_speech ORDER BY `id` DESC LIMIT 1";
#    $query_handle = $connect->prepare($query);
#    $query_handle->execute();
#    while (@row = $query_handle->fetchrow_array()){
#        $lastId = $row[0];
#    }
#      quest::settimer("discord", 1);
#}

#sub EVENT_TIMER {
#      $connect = plugin::LoadMysql();
#    $query = "SELECT `from`, `message`, `id` FROM qs_player_speech WHERE `id` > ? AND `type` = 5 AND `to` = '!discord' LIMIT 1";
#    $query_handle = $connect->prepare($query);
#    $query_handle->execute($lastId);
#    while (@row = $query_handle->fetchrow_array()){
#        quest::we(260, $row[0]." says from discord, '".$row[1]."'");
#        $lastId = $row[2];
#    }
#    return
#}