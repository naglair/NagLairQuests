sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Oh, hey there.. How ya doing? My name's Den. I work for ol' [Rohand] here, unloading the [shipments] that come in from overseas.");
  }
  if ($text=~/Rohand/i) {
    plugin::Whisper("Ol' Captain Rohand is the owner of the Mermaid's Lure. He trades goods with sailors and sea [merchants]. I think that old man was even born at sea.. And he's got more stories than fish have scales.");
  }
  if ($text=~/shipments/i) {
    plugin::Whisper("Yeah.. We get merchants and traders with goods from here to [Odus].");
  }
  if ($text=~/merchants/i) {
    plugin::Whisper("Yeah.. We get merchants and traders with goods from here to [Odus].");
  }
  if ($text=~/Odus/i) {
    plugin::Whisper("Odus? I've never been there, but I hear it's a long journey.");
  }
}

sub EVENT_ITEM {
  if($gold >= 2){
  plugin::Whisper("Yeah, well, these are pretty hard to come by. In fact, these came all the way from Odus. Enjoy, and tell your buddies.");
  quest::summonitem(18006);
  quest::faction( 33,2 );
  quest::faction( 217,-2 );
  quest::faction( 53,2 );
  quest::faction( 135,-2 );
  quest::faction( 164,2 );
  quest::exp(200);
}
plugin::return_items(\%itemcount);
}