# Test of Phanatsm - enchanter epic - start of quest
# 

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("Yes, young one?");
  }
  if ($text=~/i am ready for the test of the phantasm/i) {
    plugin::Whisper("It will be simple, go collect these items and return them to me. Head of a serpent, essence of a ghost, essence of a vampire, and sands of the mystics. Do so and you will receive the last of the pieces. Be sure to combine them in a sack first. Just ask and I will provide you with one.");
  }
  if ($text=~/head of a serpent/i) {
    plugin::Whisper("Serpent is probably not an accurate term for what you must return to me. It is actaully the reminants of a spirit. The spirit is one which was erradicated long long ago by the Iksar. I believe they were called the Shissar. You may need to travel to the Iksar city to learn more about these creatures.");
  }
  if ($text=~/essence of a ghost/i) {
    plugin::Whisper("You don't have to look far to find roaming spirits. One in particular though has more meaning then the other sorry souls trapped here. You see, Kindle was a dear friend of mine. I came in search of him when he stopped writing. Well...look at me now. I fear that I have succumbed to the same fate as poor Kindle.");
  }
  if ($text=~/essence of a vampire/i) {
    plugin::Whisper("The essence of a vampire is just that. Only the most powerful of these creatures will possess what you need.");
  }
  if ($text=~/sands of the mystic/i) {
    plugin::Whisper("They are sands that were imbued with the magical might of the mystics. Mystics use a ritual involving their own blood to create a powerful bond with the sand. One will need to search the shores.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 10604 => 1)) {
    plugin::Whisper("Jeb has spoken with you already, excellent. Tell me are you ready for the test of the phantasm?");
    quest::summonitem(10604);
    quest::summonitem(17861);
  }
  elsif (plugin::check_handin(\%itemcount, 10638 => 1)) {
    plugin::Whisper("You have done well, take this last piece and return them to Jeb. He will be able to complete the final crafting.");
    quest::faction(342,30);
    quest::exp(100000);
    quest::summonitem(10613);
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

# EOF Zone: hole ID: 39063 NPC: Polzin_Mrid