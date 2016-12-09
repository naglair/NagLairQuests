## NPC Name: Priestess
## Zone: chambersf - /quests/chambersf/priestess.pl
## Description: Buff Bot
## Author: Ghanja
## Messy as shit way of doing things, but, far more definable and fuck it, works
## This will round up to the nearest 10th level (ie. 52 = 60) thus 
## level60generic denotes the level 60 spells you'd want to give
## Consider this still in testing/debug/dev for now


############################################################################################
###############################  EDIT SHIT BELOW ONLY ######################################
############################################################################################

$maxlevelbuffs = 70;
%buffshash = (
    1 => 
	# Warrior
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3242,3444],
		level70costadvanced	=>	100,
	},
    2 => 
	# Cleric
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
		level70costadvanced	=>	100,
	},
    3 => 
	# Paladin
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3360,3460,3242,3444],
		level70costadvanced	=>	100,
	},
    4 => 
	# Ranger
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3360,3460,3242,3444],
		level70costadvanced	=>	100,
	},
    5 => 
	# Shadow Knight
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3360,3460,3242,3444],
		level70costadvanced	=>	100,
	},
    6 => 
	# Druid
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
		level70costadvanced	=>	100,
	},
    7 => 
	# Monk
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3242,3444],
		level70costadvanced	=>	100,
	},
    8 => 
	# Bard
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3242,3444],
		level70costadvanced	=>	100,
	},
    9 => 
	# Rogue
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3242,3444],
		level70costadvanced	=>	100,
	},
    10 => 
	# Shaman
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
		level70costadvanced	=>	100,
	},
    11 => 
	# Necromancer
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
		level70costadvanced	=>	100,
	},
    12 => 
	# Wizard
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
		level70costadvanced	=>	100,
	},	
    13 => 
	# Magician
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
	},
    14 => 
	# Enchanter
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3463,2524,3384,3441,3360,3460,4108,3242,3444],
		level70costadvanced	=>	100,
	},
    15 => 
	# Beastlord
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464,2570,2629],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3360,3460,3242,3444],
		level70costadvanced	=>	100,
	},
    16 => 
	# Berserker
	{
		level10generic		=>	[278,3692,144,174,171,146,148,279,129],
		level10costgeneric	=>	0,
		level10advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level10costadvanced	=>	100,
		level20generic		=>	[278,3692,144,174,171,146,148,279,129],
		level20costgeneric	=>	0,
		level20advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level20costadvanced	=>	100,
		level30generic		=>	[278,3692,144,174,171,146,148,279,129],
		level30costgeneric	=>	0,
		level30advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level30costadvanced	=>	100,
		level40generic		=>	[278,3692,144,174,171,146,148,279,129],
		level40costgeneric	=>	0,
		level40advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level40costadvanced	=>	100,
		level50generic		=>	[278,3692,144,174,171,146,148,279,129],
		level50costgeneric	=>	0,
		level50advanced		=>	[4053,2525,138,412,172,1694,2176,2524,680,2176,2524],
		level50costadvanced	=>	100,
		level60generic		=>	[278,3692,144,174,171,146,148,279,129],
		level60costgeneric	=>	0,
		level60advanced		=>	[2510,2530,1598,2520,1710,1669,2590,1464],
		level60costadvanced	=>	100,
		level70generic		=>	[278,3692,144,174,171,146,148,279,129],
		level70costgeneric	=>	0,
		level70advanced		=>	[1546,3479,3399,3397,3178,3486,3432,3417,3463,2524,3384,3441,3242,3444],
		level70costadvanced	=>	100,
	}
);

############################################################################################
###############################  EDIT SHIT ABOVE ONLY ######################################
############################################################################################


sub EVENT_SAY {
	#### HAIL ####
	my $groupbuffmaxcost = 0;
	if ($text =~/Hail/i) { 
		plugin::Whisper("Greetings $name. I have been sent to aid you on your journey! Would you like: ");
		plugin::Whisper("Some [".quest::saylink("lesser buffs",1)."] for ".$buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costgeneric"}."pp");
		plugin::Whisper("Better [".quest::saylink("greater blessings",1)."] for ".$buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costadvanced"}."pp");
		if ($client->IsGrouped()) {
			$buffgroup = $entity_list->GetGroupByClient($client);
			for ($count = 0; $count < $buffgroup->GroupCount(); $count++) {
				my $groupmember = $buffgroup->GetMember($count);
				if ($groupmember->GetZoneID() == $zoneid) {
					$groupbuffmaxcost += ($buffshash{$groupmember->GetClass()}->{"level".round_up($groupmember->GetLevel())."costadvanced"});
				}
			}
			plugin::Whisper("Best [".quest::saylink("group blessings",1)."] for ".$groupbuffmaxcost."pp");
		}
		plugin::Whisper("To [".quest::saylink ("cure", 1)."] you and/or your pet for free.");
		plugin::Whisper("A [".quest::saylink ("bind", 1)."] to this location at no cost.");
	}
	#### LESSER BUFFS ####
	elsif ($text=~/lesser/i) {
		if ($client->GetCarriedMoney() >= (($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costgeneric"}) * 1000)) {
			my @buffstocast = @{$buffshash{$client->GetClass()}->{"level".round_up($ulevel)."generic"}};
			foreach my $buff (@buffstocast) {
				if ($client->GetPetID()) {
					my $pcpet = $entity_list->GetMobByID($client->GetPetID());
					$client->SpellFinished ($buff, $pcpet);
				}
				quest::selfcast ($buff);
			}
			$client->TakeMoneyFromPP((($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costgeneric"}) * 1000), 1) unless ($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costgeneric"}) == 0;
		}
		else {
			plugin::Whisper ("I charge ".($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costgeneric"})."pp for lesser buffs, you don't appear to have enough on you.");
		}
	}
	#### ADVANCED BUFFS ####
	elsif ($text =~/greater/i) {
		if ($client->GetCarriedMoney() >= (($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costadvanced"}) * 1000)) {
			my @buffstocast = @{$buffshash{$client->GetClass()}->{"level".round_up($ulevel)."advanced"}};
			foreach my $buff (@buffstocast) {
				if ($client->GetPetID()) {
					my $pcpet = $entity_list->GetMobByID($client->GetPetID());
					$client->SpellFinished ($buff, $pcpet);
				}
				quest::selfcast ($buff);
			}
			$client->TakeMoneyFromPP((($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costadvanced"}) * 1000), 1) unless ($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costadvanced"}) == 0;
		}
		else {
			plugin::Whisper ("I charge ".($buffshash{$client->GetClass()}->{"level".round_up($ulevel)."costadvanced"})."pp for advanced blessings, you don't appear to have enough on you.");
		}
	}
	#### GROUP BUFFS ####
	elsif ($text =~ /group/i && $client->IsGrouped()) {
		if ($client->GetCarriedMoney() >= (($buffshash{$client->GetClass()}->{"level".$maxlevelbuffs."costadvanced"}) * 1000 * $buffgroup->GroupCount())) {
			for ($count = 0; $count < $buffgroup->GroupCount(); $count++) {
				my $groupmember = $buffgroup->GetMember($count);
				if ($groupmember->GetZoneID() == $zoneid) {
					$client->TakeMoneyFromPP((($buffshash{$groupmember->GetClass()}->{"level".round_up($groupmember->GetLevel())."costadvanced"}) * 1000), 1) unless ($buffshash{$groupmember->GetClass()}->{"level".round_up($groupmember->GetLevel())."costadvanced"}) == 0;
					my @buffstocast = @{$buffshash{$groupmember->GetClass()}->{"level".round_up($groupmember->GetLevel())."advanced"}};
					foreach my $buff (@buffstocast) {
						if ($groupmember->GetPetID()) {
							my $groupmemberpet = $entity_list->GetMobByID($groupmember->GetPetID());
							$groupmember->SpellFinished ($buff, $groupmemberpet);
						}
						$groupmember->SpellFinished ($buff, $groupmember);
					}
				$groupmember->SendMarqueeMessage(15, 510, 1, 1, 3000, "You've been buffed compliments of ".$client->GetCleanName()."!");
				}			
			}
		}
		else {
			plugin::Whisper("I charge a maximum of ".(($buffshash{$client->GetClass()}->{"level".$maxlevelbuffs."costadvanced"}) * $buffgroup->GroupCount())."pp to cast buffs on your entire group.  You don't appear to have enough!");
		}	
	}
	#### CURE ####
	elsif ($text=~/cure/i) { 
		if ($client->GetPetID()) {
			my $pppet = $entity_list->GetMobByID($client->GetPetID());
			$client->SpellFinished (6594, $pppet);
		}
		$client->SpellFinished(6594); 
	}
	#### BIND ####
	elsif ($text=~/bind/i) {
		quest::selfcast(35);
	}
}

sub round_up {
	my $n = shift;
	my $scale = 10**int(log($n)/log(10));
	$n = 9 if $scale == 1;
	if ($n > $scale) {
		$n = int($n/$scale+1)*$scale;
	}
	$n;
}
