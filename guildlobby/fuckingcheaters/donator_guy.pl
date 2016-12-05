sub EVENT_SAY{


if ($text =~/Hail/i)
{ 
plugin::Whisper("Greetings $name. I can [check] your donator status or give you [info] on how to donate, along with info on the [benefits] of donating. NOTE: Your account will be flagged. Any ALTS you make on the donator account will also receive donator status. However, other accounts you own will not."); 
}

if($text=~/info/i)
{
plugin::Whisper("You can donate by going to sites.google.com/site/nagafenslair and donating! ( dont forget to put your username and account name in the memo box) Do you want to know the [benefits] of donating? Donations will flag your account for 35 days per 5 dollars! (one account = 5 USD for 35 days, two accounts = 10 USD for 35 days)");
}

if($text=~/benefits/i)
{
plugin::Whisper("When you donate, you receive an increase in the number of concurrent connections (BOX limit), access to the special donator zone (the doors behind me) which has tons of helpful [merchants], questgivers , free donator buffs, special trinkets, and a translocator to anywhere! if you still have doubts, just remember that you are helping a good cause! 100% of the donated money goes to supporting and improving this server!");
}


if ($text=~/merchants/i) 
{
 { plugin::Whisper("Custom merchants sell goodies to donators like newbie armor, flagging tokens (droppable/tradable token to flag alts with, work just like the entry tokens), unique potions, unique food and drink, special clickable buff items, as well."); }
 }



  if ($text=~/check/i) {
if($status >= 8) {
 quest::setglobal("donator", 1, 5, "F");
plugin::Whisper("you are flagged as a donator - you may enter the doors behind me ");
} else
{
plugin::Whisper("you are not a donator");
}


}
}

