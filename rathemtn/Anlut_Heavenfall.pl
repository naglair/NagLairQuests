#Quest not completed.

sub EVENT_SAY {
  if(($class eq "Wizard") && ($race eq "Froglok") && ($ulevel >= 20)) {
    if($text=~/hail/i) {
      plugin::Whisper("I see that you've chosen the arcane path, young wizard. Very well. I cannot dissuade you now. Only the gods know how much I regret my [own choice].");
    }
    if($text=~/own choice/i) {
      plugin::Whisper("This power, this mantle of responsibility we wield. This Yoke. Truth be told, I know why you've chosen this path. You want the power. You beg for the yoke. Well, I will not teach you what I was taught. There are other, more important, lessons to [learn].");
    }
    if($text=~/learn/i) {
      plugin::Whisper("First and foremost you must master your basic control of time and space. The other energies you wield pale in comparison to this. You will find practice for them enough in your common experience. It is not the same with [teleportation].");
    }
    if($text=~/teleportation/i) {
      plugin::Whisper("Even though you may have learned to gate in retreat or take the broad bridges of the spires, you are far from ready. Let us see if you can use the unwritten knowledge in your blood. Take this Portal Prism. Study it. When you think you've learned its secrets, give it back to me and we shall test your learning.");
      #quest::summonitem(63114); #Portal Prism (1)
    }
  }
  else {
    #Shadowstep anyone else that tries to talk to him
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 63114 => 1)) { #Portal Prism (1)
    plugin::Whisper("Let us see if you've learned the hidden way or if you must return the crystal to me and beg for further guidance...");
    quest::summonitem(63115); #Portal Prism (2)
    #Port PC to Nexus
  }
  elsif(plugin::check_handin(\%itemcount, 63115 => 1, 63125 => 3)) { #Portal Prism (2), Twilight Bloom x 3
    plugin::Whisper("Hmph. Well, I hope that you've studied it more carefully this time . . .");
    quest::summonitem(63116); #Portal Prism (3)
    #Port PC to South Ro
  }
  elsif(plugin::check_handin(\%itemcount, 63116 => 1, 63124 => 1)) { #Portal Prism (3), Time Torn Skull
    plugin::Whisper("Well, at least you are honest. And that deserves some reward. Here is your prism. Your lessons have changed it, see? Keep it. And take this spell. Study the scroll more carefully than you did the stone. When you've grown some in ability, return and we will continue your lessons.");
    quest::summonitem(63117); #Purged Portal Prism
    quest::summonitem(15562); #Spell: North Portal
  }
  elsif(plugin::check_handin(\%itemcount, 63117 => 1)) { #Purged Portal Prism
    plugin::Whisper("Yes. It grows in power. As do you. Now, I've started a spell within it. Let's have you experiment a bit. Use Igok. He's daft and nearly useless. A perfect test subject. Take the prism and focus your energies on it, but keep me as your target. You must split your concentration. Good. Now, slowly, allow those energies to extend towards Igok there. Do you feel the [growing power]?");
    quest::summonitem(); #Attuned Portal Prism
  }
  elsif(plugin::check_handin(\%itemcount, 0000 => 1, 0000 => 1, 0000 => 1)) { #Attuned Portal Prism, First Fragment of Igok, Second Fragment of Igok
    plugin::Whisper("Always repairing your blunders doesn't make up for them! Bah! If it weren't for your obvious talent, I would end you myself. Leave me! Go and search the world. Perhaps you'll find some grain of intelligence, some iota of wisdom. Do not return to me until you've gained many, many seasons. And here. . .keep this with you as a token from me.");
    quest::summonitem(); #Anlut's Hint
  }
  elsif(plugin::check_handin(\%itemcount, 0000 => 1)) { #Anlut's Hint
    #Port PC to Dreadlands
  }
  elsif(plugin::check_handin(\%itemcount, 0000 => 1)) { #Time Terror Essence
    plugin::Whisper(". .amazing. . . I knew there was some gift within you, some desire to do more. Well, now you've proven it. It is good to see you succeed after so much failure. I cannot deny it. Nor can I deny that you deserve recognition for your efforts. Here, take this. Perhaps it will keep you safe. Good luck, $name.");
    quest::summonitem(); #Heavenfall Girding
  }
  else {
    plugin::Whisper("Go away! You are not the one finishing the trial!");
    plugin::return_items(\%itemcount);
  }
}