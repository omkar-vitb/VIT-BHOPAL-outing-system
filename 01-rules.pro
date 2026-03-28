/* 
This file contains all the rules for Vit bhopal outing system like :-
      1->One student will get maximum of two outing each week .
      2->If the student came after 6 pm then they will be penalized with 1 outing .
      3->Student will get outing only after approval of their proctor.
      4->only getting approval from proctor wont do enough next student must take approval from hostel too.
*/


/*
This checks 4 criteria:
    1-> Outingtaken -> how many outings the student already took this month.
    2->Latepenalties -> if the student has been penalized for late coming.
    3->Proctorapproval->did their proctor approve the outing.
    4->Hostelapproval-> did the hostel approve the outing
Only if they fulfill all the criteria then only they be allowed for outing.
*/


process_outing(Outingtaken,Latepenalties,Proctorapproval,Hostelapproval):-

% checking proctor approval
Proctorapproval == yes,
% checking hostel approval.
Hostelapproval==yes,
% calculating outling left for student.
Outingleft is 2-Outingtaken-Latepenalties,
Outingleft>0,


%if all criteria met then alllowed
write('STATUS: APPROVED! you are allowed to go for outing this week. Enjoy! and be safe.'),nl.



% if any criteria not met then denied
process_outing(_,_,_,_):-
write('STATUS: DENIED! you did not meet the criteria to go for outing. Please try next week.'),nl.
