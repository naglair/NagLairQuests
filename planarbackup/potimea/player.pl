sub EVENT_CLICKDOOR {
  my $instance = quest::GetInstanceID("potimeb", 0);
  if (defined($qglobals{potimeLockout}) && $qglobals{potimeLockout} > 0 && !defined($qglobals{potime_canzone})) {
    quest::shout("I AM HERE");
  }
  elsif ($instance > 0) {
    if ($doorid == 8) {
      $client->Message(10, "The portal, dim at first, begins to glow brighter.");
      $client->Message(10, "The portal flashes briefly, then glows steadily.");
      quest::MovePCInstance(223, $instance, -36, 1352, 496);
    }
    elsif ($doorid == 9) {
      $client->Message(10, "The portal, dim at first, begins to glow brighter.");
      $client->Message(10, "The portal flashes briefly, then glows steadily.");
      quest::MovePCInstance(223, $instance, -51, 857, 496);
    }
    elsif ($doorid == 10) {
      $client->Message(10, "The portal, dim at first, begins to glow brighter.");
      $client->Message(10, "The portal flashes briefly, then glows steadily.");
      quest::MovePCInstance(223, $instance, -35, 1636, 496);
    }
    elsif ($doorid == 11) {
      $client->Message(10, "The portal, dim at first, begins to glow brighter.");
      $client->Message(10, "The portal flashes briefly, then glows steadily.");
      quest::MovePCInstance(223, $instance, -55, 569, 496);
    }
    elsif ($doorid == 12) {
      $client->Message(10, "The portal, dim at first, begins to glow brighter.");
      $client->Message(10, "The portal flashes briefly, then glows steadily.");
      quest::MovePCInstance(223, $instance, -27, 1103, 496);
    }
    elsif ($doorid == 13) { #graveyard
      $client->Message(10, "The portal, dim at first, begins to glow brighter.");
      $client->Message(10, "The portal flashes briefly, then glows steadily.");
      quest::MovePCInstance(223, $instance, 865, -150, 395);
    }
  }
}