sub EVENT_ENTERZONE {
	if (defined (plugin::readglobal("aten"))) {
		$client->Message (15, "Aten Ha Ra has ".TimeToQglobalExpiration("aten")." remaining on cool-down!");
	}
	else {
		$client->Message (15, "Aten Ha Ray has no time left on its cool-down!");
	}
}