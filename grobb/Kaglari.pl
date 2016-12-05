# Majik Power
# More Help for Innoruuk

sub EVENT_SAY {

   if($text=~/hail/i){
   
   plugin::Whisper("SNORT!  HHUUUUCCCKSSH..  Peh!  You speak at Kaglari. High Priestess of Dark Ones.  Children of Hate.  Spawn of Innoruuk.  $name . speak or be gone!  SNORT!  You [wish majik power]?");
 }

   if ($text=~/wish majik power/i){

   plugin::Whisper("GOOD! <SNORT> Innoruuk needs more childrens.  You show majik skill or I give you to Innoruuk.  You bring two snake scales and two bone chips ..<SNORT>..  from old bones.  I teach you majik.  GO!  <SNORT!!>");

}

   if ($text=~/help innoruuk/i){
   
   plugin::Whisper("Me hears orcs nearby are trubble. Da werd frum Neriak is dey wants us ta kills dem before dey organize. Dark elf say ta looks for Deathfist Clan. Say dey called cen-tu-ri-ons. Dey try ta gets big orc army. Shows me ya can strike fear and hate inta dem orcs.. dey needs be more scared a us den dem humies. Brings me a Deathfist slashed belt.");
   
   }

}

sub EVENT_ITEM {

   if(plugin::check_handin(\%itemcount,13073 => 2, 13070 => 2)){ # Majik power
   
      plugin::Whisper("Good. Innoruuk get special gift. Not you, dis time. Here. Learning majik wid dis. You more want to [help Innoruuk]?");
      quest::summonitem(15093);
      quest::faction(70,5);  # +Dark Ones
      quest::faction(292,5);  # +Shadowknights of Night Keep
      quest::faction(106,-10); # -Frogloks of Guk
      quest::exp(100);

}

   if(plugin::check_handin(\%itemcount,13916 => 1)){ # More Help for Innoruuk

      plugin::Whisper("Good job. Dat help lerns um. Takes dis ta help ya lerns how ta do more hateful tings. Ya gots a good starts fer Him ta be prouds a ya.");

      quest::summonitem(15272);
      quest::faction(70,5);  # +Dark Ones
      quest::faction(292,5);  # +Shadowknights of Night Keep
      quest::faction(106,-10); # -Frogloks of Guk
      quest::exp(150);
      
}

if (plugin::check_handin(\%itemcount,18791 => 1)){
plugin::Whisper("Good.. Kaglari need you help.. Kaglari teach you majik now.");
quest::summonitem("13530");
quest::exp("100"); 
}
plugin::return_items(\%itemcount); # return unused items


   }


#END of FILE Zone:grobb  ID:40026 -- Kaglari 

