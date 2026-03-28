/* 
This file contains all the rules for Vit outing system like :-
      1->One student will get maximum of two outing each week .
      2->If the student came after 6 pm then they will be penalized with 1 outing .
      3->Student will get outing only after approval of their proctor.
      4->only getting approval from proctor wont do enough next student must take approval from hostel too.
*/


/*
This checks fro 4 criteria Outingtaken which means how many outing you already took this month then Latepenalties which means if the student have been penalized for late coming and then Proctorapproval means did their proctor approved for the outing and finally Hostelapproval means that did the hostel approved for outing and only if they fullfill following criteria then only they will be allowed for outing 
*/


process_outing(Outingtaken,Latepenalties,Proctorapproval,Hostelapproval):-

Proctorapproval == yes,
Hostelapproval==yes,
Outingleft is 2-Outingtaken-Latepenalties,
Outingleft>0,


/* 
finally if they will be allowed for outing only if they will fullfill the criteria then this message will appear 
*/
write('STATUS: APPROVED! you are allowed to go for outing this week. Enjoy! and be safe.'),nl.


/* 
and if they dont fullfill those above criteria then this message will appear 
*/



process_outing(_,_,_,_):-
write('STATUS: DENIED! you did not meet the criteria to go for outing. Please try next week.'),nl.
