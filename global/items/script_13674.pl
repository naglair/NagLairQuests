# Thank you to Skomag over at EQTitan for this.

# handles Vibrating Gauntlets/Hammer of Infuse
# clicking the items transmutes back and forth
# script file is used to bypass the lore check error
# 
# item 11668 Vibrating Gauntlets of Infuse
# item 11669 Vibrating Hammer of Infuse
# spell 1823 Transmute Gauntlets
# spell 1824 Transmute Hammer

sub EVENT_ITEM_CLICK_CAST {
	if (($itemid == 11668) || ($itemid == 11669)) {
		$client->NukeItem($itemid);
	}
}