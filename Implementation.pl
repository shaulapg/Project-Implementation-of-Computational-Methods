travel(q0,a,q1).
travel(q0,b,q6).
travel(q0,1,q0).
travel(q1,a,q2).
travel(q1,b,q6).
travel(q1,1,q0).
travel(q2,a,q3).
travel(q2,b,q6).
travel(q2,1,q0).
travel(q3,a,q4).
travel(q3,b,q6).
travel(q3,1,q0).
travel(q4,a,q5).
travel(q4,b,q6).
travel(q4,1,q0).
travel(q5,a,q5).
travel(q5,b,q5).
travel(q5,1,q5).
travel(q6,a,q1).
travel(q6,b,q6).
travel(q6,1,q7).
travel(q7,a,q1).
travel(q7,b,q8).
travel(q7,1,q0).
travel(q8,a,q1).
travel(q8,b,q6).
travel(q8,1,q9).
travel(q9,a,q1).
travel(q9,b,q10).
travel(q9,1,q0).
travel(q10,a,q1).
travel(q10,b,q6).
travel(q10,1,q11).
travel(q11,a,q1).
travel(q11,b,q12).
travel(q11,1,q0).
travel(q12,a,q1).
travel(q12,b,q6).
travel(q12,1,q13).
travel(q13,a,q1).
travel(q13,b,q14).
travel(q13,1,q0).
travel(q14,a,q1).
travel(q14,b,q6).
travel(q14,1,q15).
travel(q15,a,q15).
travel(q15,b,q15).
travel(q15,1,q15).

final(q7).
final(q9).
final(q11).
final(q13).

automaton(Word) :-
    check(Word, q0).

check([], Initial) :-
    final(Initial).

check([Letter | Rest], Initial) :-
    travel(Initial, Letter, Next),
    check(Rest, Next).