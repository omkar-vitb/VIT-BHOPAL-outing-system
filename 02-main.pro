%-- main.pro ---
:- consult('rules.pro').

start :-
write('=== college outing approval system ==='),nl,

write('How many outing have you taken this month?'), nl,
read(Outingtaken),

write('How many late penalties do you have?'),nl,
read(Latepenalties),

write('Has the proctor approved? Type yes or no:-'),nl,
read(Proctorapproval),

write('Has the hostel approved? Type yes or no:-'),nl,
read(Hostelapproval),

process_outing(Outingtaken,Latepenalties,Proctorapproval,Hostelapproval).