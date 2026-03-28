/*
 This will concern to the 01-rules.pro file to check the criteria whether the student is allowed for outing or not.
 */

:- consult('01-rules.pro').
start :-

% Welcome message
write('=== college outing approval system ==='),nl,

% Ask outings taken
write('How many outing have the student has already taken this month?'), nl,
read(Outingtaken),

 % Ask penalties
write('How many late penalties does the student have?'),nl,
read(Latepenalties),


% Ask proctor approval
write('Has the proctor approved? Type yes or no:-'),nl,
read(Proctorapproval),

% Ask hostel approval
write('Has the hostel approved? Type yes or no:-'),nl,
read(Hostelapproval),

process_outing(Outingtaken,Latepenalties,Proctorapproval,Hostelapproval).

 
 
