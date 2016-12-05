insert into lootdrop values (100001, 'Crude Defiant');
insert into lootdrop_entries select 100001, id, 1, 1, 2 from items where name like 'Crude Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100001, 1, 4 from npc_types where loottable_id > 0 and level between 0 and 4;

insert into lootdrop values (100002, 'Simple Defiant');
insert into lootdrop_entries select 100002, id, 1, 1, 2 from items where name like 'Simple Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100002, 1, 4 from npc_types where loottable_id > 0 and level between 5 and 14;

insert into lootdrop values (100003, 'Rough Defiant');
insert into lootdrop_entries select 100003, id, 1, 1, 2 from items where name like 'Rough Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100003, 1, 4 from npc_types where loottable_id > 0 and level between 15 and 25;

insert into lootdrop values (100004, 'Ornate Defiant');
insert into lootdrop_entries select 100004, id, 1, 1, 2 from items where name like 'Ornate Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100004, 1, 4 from npc_types where loottable_id > 0 and level between 26 and 36;

insert into lootdrop values (100005, 'Flawed Defiant');
insert into lootdrop_entries select 100005, id, 1, 1, 2 from items where name like 'Flawed Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100005, 1, 4 from npc_types where loottable_id > 0 and level between 37 and 47;

insert into lootdrop values (100006, 'Intricate Defiant');
insert into lootdrop_entries select 100006, id, 1, 1, 2 from items where name like 'Intricate Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100006, 1, 4 from npc_types where loottable_id > 0 and level between 48 and 58;

insert into lootdrop values (100007, 'Elaborate Defiant');
insert into lootdrop_entries select 100007, id, 1, 1, 2 from items where name like 'Elaborate Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100007, 1, 4 from npc_types where loottable_id > 0 and level between 59 and 69;

insert into lootdrop values (100008, 'Elegant Defiant');
insert into lootdrop_entries select 100008, id, 1, 1, 2 from items where name like 'Elegant Defiant%' and nodrop = 1; 
insert into loottable_entries select distinct loottable_id, 100008, 1, 4 from npc_types where loottable_id > 0 and level >= 70;