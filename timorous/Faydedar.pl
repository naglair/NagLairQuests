sub EVENT_SPAWN { 
if ($entity_list->GetMobByNpcTypeID(96073)){
quest::depop;
  }
}
sub EVENT_KILLED_MERIT
{
quest::setglobal("Faydedar",1,5,'F');
}