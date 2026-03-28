%-- rules.pl ---

process_outing(Outingtaken,penalties,Proctorapproval,Hostelapproval):-

Proctorapproval ==yes,
Hostelapproval==yes,
Outingleft is 2-Outingtaken-penalties,
Outingleft>0,

Write('STATUS: APPROVED! you are allowed to go for outing this week. Enjoy! and be safe.'),nl

process_outing(_,_,_,_):-
write('STATUS: DENIED! you did not meet the criteria to go for outing. Please try next week.'),nl.
