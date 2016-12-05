# Quest for respecialization
# Quest for Bard Lambent Fire Opal

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("I am Ostorm of the Temple of Solusek Ro, guardian of the sacred crystal of Kintaz.  Be wary and keep your distance, lest the proximity of the crystal [steal] your [memories].");
  }
  if($text=~/steal my memories/i) {
    plugin::Whisper("It is the nature of the crystal of Kintaz to steal the memories of those around it. Only I am safe, and then only because of the strong wardings placed on me by Solusek Ro himself. Are you interested in [losing] any [memories]?");
  }
  if($text=~/losing my memories/i) {
    plugin::Whisper("Recently, I have been experimenting with the crystal, and have found that those exposed to ruby light filtered through it tend to lose the memories of their most specialized arcane skills. Are you sure you want to [lose advanced memory] of specialization?");
  }
  if($text=~/lose advanced memory/i) {
    plugin::Whisper("Be warned that once exposed to the crystal, I can not reverse the effects. If you desire exposure, fetch me a ruby.");
  }
  if($text=~/fifty gold/i) {
    plugin::Whisper("You do not remember?  You promised me fifty gold coins for allowing you to be exposed to the sacred crystal of Kintaz.");
  }
}

sub EVENT_ITEM {
  if($itemcount{10035} == 1) {
    plugin::Whisper("..hear me? Ah, you seem to be coming out of your stupor. I think you have been exposed to the crystal long enough. By the time you leave the temple, your memories should have faded. Do you have the [fifty gold] coins that you owe me?");
    quest::faction("320","15");
    quest::faction("291","-15");
    foreach $skill (43, 44, 45, 46, 47) {
      if($client->GetSkill($skill) > 49) {
        $client->SetSkill($skill, 49);
      }
    }
    quest::me("Your specialize skills have all been set to 49.");
    quest::exp(1000);
  }

  if($gold == 50) {
    plugin::Whisper("Thank you.");
    quest::faction("320","15");
    quest::faction("291","-15");
  }

  #Lambent Fire Opal
  if(($itemcount{10031} == 2) && ($itemcount{10000} == 1)) {
    plugin::Whisper("Ahh, Genni must have sent you to me.  Very well, here is your Lambent Fire Opal.");
    quest::summonitem(10128);
    quest::faction("320","15");
    quest::faction("291","-15");
  }

  #magnetized platinum
  if($itemcount{16507} == 1) {
    plugin::Whisper("I see that Gavel has sent you to me.  Very well, I have magnetized your platinum bar - take it.");
    quest::summonitem(19049);
  }
}

# Quest by mystic414

