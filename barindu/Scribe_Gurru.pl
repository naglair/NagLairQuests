sub EVENT_SAY {
  $InInstanceVxed = quest::GetInstanceID("vxed",0);
  $InInstanceTipt = quest::GetInstanceID("tipt",0);
  $InInstanceSnplant = quest::GetInstanceID("snplant",0);
  $InInstancePlant = quest::GetInstanceID("snplant",1);
  $InInstanceLair = quest::GetInstanceID("snlair",0);
  $InInstanceCrematory = quest::GetInstanceID("sncrematory",0);
  $InInstancePool = quest::GetInstanceID("snpool",0);
  if ($text=~/hail/i) {
      if (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 1) {
         plugin::Whisper("Nice work, speak to the High Priest to continue.");
         plugin::Whisper("Do you need to leave an [instance]?");
         quest::setglobal("sewers",2,5,"F");
         $client->Message(4,"You receive a character flag!"); 
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 2  && $qglobals{sewers} == 2) {
         plugin::Whisper("Nice work, speak to the High Priest to continue.");
         plugin::Whisper("Do you need to leave an [instance]?");
         quest::setglobal("sewers",3,5,"F");
         $client->Message(4,"You receive a character flag!"); 
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 2) {
         plugin::Whisper("Thank you for assisting in the Crematory, please visit the Plant to advance.");
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 3  && $qglobals{sewers} == 3) {
        plugin::Whisper("Nice work, speak to the High Priest to continue.");
        plugin::Whisper("Do you need to leave an [instance]?");
        quest::setglobal("sewers",4,5,"F");
        $client->Message(4,"You receive a character flag!"); 
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 3) {
         plugin::Whisper("Thank you for assisting in the Lair, please visit the Plant to advance.");
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 3  && $qglobals{sewers} == 2) {
         plugin::Whisper("Thank you for assisting in the Lair, please visit the Crematory to advance.");
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 4  && $qglobals{sewers} == 5) {
         plugin::Whisper("Nice work, the path to vxed is open, speak with Apprentice Udranda.");
         quest::setglobal("god_vxed_access",1,5,"F");
         $client->Message(4,"You receive a character flag!"); 
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 4  && $qglobals{sewers} == 4) {
         plugin::Whisper("Nice work, the path to vxed is open, speak with Apprentice Udranda.");
         quest::setglobal("god_vxed_access",1,5,"F");
         $client->Message(4,"You receive a character flag!"); 
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 4) {
         plugin::Whisper("Thank you for assisting in the Pool, please visit the Plant to advance.");
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 4  && $qglobals{sewers} == 2) {
         plugin::Whisper("Thank you for assisting in the Pool, please visit the Crematory to advance.");
      }
      elsif (defined $qglobals{temp_sewers} && $qglobals{temp_sewers} == 4  && $qglobals{sewers} == 3) {
         plugin::Whisper("Thank you for assisting in the Pool, please visit the Lair to advance.");
      }
else {
  plugin::Whisper("Please speak with the High Priest if you desire to assist");
  plugin::Whisper("Do you need to leave an [instance]?");
     }
}
if (($text=~/instance/i) && ($InInstanceTipt > 0)) {
    quest::DestroyInstance($InInstanceTipt);
    plugin::Whisper("Tipt Instance Destroyed");
    }
if (($text=~/instance/i) && ($InInstanceVxed > 0)) {
    quest::DestroyInstance($InInstanceVxed);
    quest::delglobal($InInstanceVxed.'_vxed_status');
    plugin::Whisper("Vxed Instance Destroyed");
    }
if (($text=~/instance/i) && ($InInstanceSnplant > 0)) {
    quest::DestroyInstance($InInstanceSnplant);
    plugin::Whisper("Plant Instance Destroyed");
    }
if (($text=~/instance/i) && ($InInstancePlant > 0)) {
    quest::DestroyInstance($InInstancePlant);
    plugin::Whisper("Plant Instance Destroyed");
    }
if (($text=~/instance/i) && ($InInstanceLair > 0)) {
    quest::DestroyInstance($InInstanceLair);
    plugin::Whisper("Lair Instance Destroyed");
    }
if (($text=~/instance/i) && ($InInstanceCrematory > 0)) {
    quest::DestroyInstance($InInstanceCrematory);
    plugin::Whisper("Crematory Instance Destroyed");
    }
if (($text=~/instance/i) && ($InInstancePool > 0)) {
    quest::DestroyInstance($InInstancePool);
    plugin::Whisper("Pool Instance Destroyed");
    }
}