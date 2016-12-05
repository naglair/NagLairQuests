# Script to Train a skill when item is clicked.
# By SirJames


sub EVENT_ITEM_CLICK {
	quest::write("TRADESKILLS.txt", "$name right-clicked " . $itemid);
	$client->Message(15,"Great knowledge awaits you!");
	my $theskill = -1;
	if($itemid && $itemid == 132553){
		$theskill = 63; #Blacksmithing
	}
	elsif($itemid && $itemid == 132554){
		$theskill = 57; #Tinkering
	}
	elsif($itemid && $itemid == 132555){
		$theskill = 58; #Research
	}
	elsif($itemid && $itemid == 132556){
		$theskill = 59; #alchemy
	}
	elsif($itemid && $itemid == 132557){
		$theskill = 60; #Baking
	}
	elsif($itemid && $itemid == 132558){
		$theskill = 61; #Tailoring
	}
	elsif($itemid && $itemid == 132559){
		$theskill = 68; #Jewelcrafting
	}
	elsif($itemid && $itemid == 132561) {
		$theskill = 64; #fletching
	}
	else {
	$client->Message(15,"there was a bug!!!");
	}
	
	
	if ($theskill > 0) {
		$client->Message(15,"This book contains many secrets...");
		my $curskill = $client->GetSkill($theskill);
		my $skillupto = ($ulevel * 4);
		#ensure current skill is not higher
		if($curskill >= $skillupto) {
			$client->Message(15, "Sorry your current skill is greater than this book can provide.");
		}
		else {
			$client->NukeItem($itemid);
			$client->SetSkill($theskill, $skillupto);
			$client->Message(15, "Your knowledge has increased!");
		}
	
	}
	
}