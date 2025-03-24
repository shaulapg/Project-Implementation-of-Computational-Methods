̀?- automaton([a,b,1,b,1,b,1,b,1,a,a,a,a,b,1]).
true.

?- automaton([1,b,b,1,a,a,a,a,a,b,1]).
false.

?- automaton([b,1]).
true.

?- automaton([a,a,a,a,b,b,1,b,1,1,b,b,1]).
true.

?- automaton([a,1,b,a,b,1,b,1,b,1,b,1,b,1]).
false.

?- automaton([b,1,a]).
false.