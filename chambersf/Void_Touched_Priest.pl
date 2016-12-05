sub EVENT_SAY {
		plugin::Whisper("You are prepared...");
		quest::MovePCInstance(2, 1, 484, 192, 5); ### SENDS PLAYER QEYNOS2 with COORDS
		}