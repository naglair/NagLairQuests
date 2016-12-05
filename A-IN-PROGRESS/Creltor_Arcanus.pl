######
#Name: Task
#Author: Kingmen
######

sub EVENT_SAY
{
 #Saylinks
        my $job = quest::saylink("job");

        if($text=~/Hail/i) {
				#if($ulevel<10 && $ulevel >7){plugin::Whisper("you are under level 10 but higher than 7");}
				#if($ulevel>=10){plugin::Whisper("you are level 10 or higher");}
                plugin::Whisper("Hi $name, I have any tasks for you right now.");
							}
        elsif($text=~/job/i)
        {
                if(!quest::istaskcompleted(quest::lasttaskinset(20)))
                {
                        if(quest::enabledtaskcount(20) == 0)
                        {
                                plugin::Whisper("I haven't seen you before!");
                                quest::enabletask(quest::firsttaskinset(20));
                        }
                        else
                        {
                                $task = quest::activespeaktask();
                                if($task != 0)
                                {
                                        $activity = quest::activespeakactivity($task);
                                        quest::updatetaskactivity($task, $activity);
                                        plugin::Whisper("Well Done!");
                                        if(!quest::istaskactive($task))
                                        {
                                                quest::disabletask($task);
                                                if($task != quest::lasttaskinset(20))
                                                {
                                                        plugin::Whisper("Well done, I ahve another task if you are willing.");
                                                        quest::enabletask(quest::nexttaskinset(20, $task));

                                                }
                                                else
                                                {
                                                        plugin::Whisper("Thank you for all your work.");
                                                }
                                        }
                                }
                                else
                                {
                                }
                        }
                        if(quest::activetasksinset(20) == 0)
                        {
                                quest::tasksetselector(20);
                        }
                }
                else
                {
                        plugin::Whisper("Hail, Conqueror!");
                }
        }
		
		
}