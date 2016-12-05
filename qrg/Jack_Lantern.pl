sub EVENT_SAY 
 {
   if($text=~/hail/i) 
    {  
       plugin::Whisper("BOO! Did I scare you? No? Oh, well, maybe you would have better [luck] if you looked like a [scarecrow] too.");
    }
   if($text=~/luck/i) 
    {  
       plugin::Whisper("Oh? You think you can do better? Then I challenge you to a scare-off! Wait a minute... you don't look scary at all. This won't do. You'll need a [costume] if you have any hope of beating me.");  
    }
   if($text=~/costume/i) 
    {  
       plugin::Whisper("Well, I shouldn't help the competition, but I'm feeling generous. If you can [find] some hay as a base, a jack-o-lantern fungus for the essence, and a lock of scarecrow straw to hold it all together I can help you get dressed up all scary like!");  
    }
   if($text=~/scarecrow/i) 
    {  
       plugin::Whisper("What's a scarecrow? Why I'm a scarecrow! Well, not really, I'm just dressed like one. Really I'm... an ogre!") ;  
    }
   if($text=~/find/i) 
    { 
       plugin::Whisper("A good place to look would be the Miller's farm in West Karana. They're always overrun with scarecrows this time of year and usually have some spare hay laying around the place. I can [send] you straight there if you want.");  
    }
   if($text=~/send/i) 
    {  
       quest::movepc(12, -5813,-2808,0); 
    }

 }

sub EVENT_ITEM
 {
  if  (plugin::check_handin(\%itemcount, 13990 => 1, 27411 => 1, 22122 => 1))
     {
    quest::emote("fashions the items into a costume and begins chanting a spell...but it explodes!");
  plugin::Whisper("Oops! Not what I was going for... but you can have it anyway.");  quest::shout (" $name has successfully completed the halloween quest! ");
    quest::summonitem("1079");  #scary costume ring
     }
  else {
   plugin::Whisper("What would I want with this?");
   plugin::return_items(\%itemcount);
       }
  }
# PoK Halloween Event NPCID:202483





