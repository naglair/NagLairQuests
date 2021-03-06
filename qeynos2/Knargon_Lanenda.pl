sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("Hey..  What's up? My name's Knargon Lanenda. I just came over here from [Freeport] a couple of months ago. I used to run a big business importing goods from [Faydwer]. If you've been to [Freeport]. I'm sure you've heard of me.");
  }
  if($text=~/freeport/i){
    plugin::Whisper("It's a long way from here. . .which is a good thing for me.");
  }
  if($text=~/faydwer/i){
    plugin::Whisper("It's a long way from here. . .which is a good thing for me.");
  }
  if($text=~/jracol/i) {
    plugin::Whisper("I don't know why [Carson] likes that guy ... he's certainly been nothing but trouble for me.");
  }
  if($text=~/carson/i) {
    plugin::Whisper("Carson McCabe? He runs that sham of a fortress called [Highpass Hold]. We've been dealing with him for a few years, now. But, lately he seems to be losing control of his business. [Hanns] will whip him into shape pretty soon though, I bet.");
  }
  if($text=~/shipment/i) {
    plugin::Whisper("We have a small shipment of goods coming in later tonight. The [courier] will be waiting outside the city gates. Casually tell the courier [Lovely night for a stroll], and give him this old card as proof that you work for us. Make certain that you are not followed, and return the shipment to me.");
    quest::summonitem(13903); #Bent Playing Card
  } 
  if($text=~/courier/i) {
    plugin::Whisper("The courier that usually runs [McCabe]'s shipment, is that good for nothing J'Racol. I don't trust his kind.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 18722 => 1)) { #Sealed Note For Knargon
    plugin::Whisper("Hmm. Carson better deal with his little 'problem' soon, it's costing us a lot of money. Hanns is gonna skin us all when he hears this. Go tell Hanns that [Carson has a mole in the Highpass] guards, and see what he wants us to do.");
    quest::faction(33,5);    #Circle of Unseen Hands
    quest::faction(53,5);    #Corrupt Qeynos Guards
    quest::faction(164,5);   #Kane Bayle
    quest::faction(217,-10); #Merchants of Qeynos
    quest::faction(135,-10); #Guards of Qeynos
  }
  else {
    #do all other handins first with plugin, then let it do disciplines
    plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
    plugin::return_items(\%itemcount);
  } 
}
#END of FILE Zone:qeynos2  ID:2063 -- Knargon_Lanenda