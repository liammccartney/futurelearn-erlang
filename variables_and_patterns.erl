-module(third).
-export([xOr1/2, xOr2/2, xOr3/2, maxThree/3, howManyEqual/3]).

xOr1(X,Y) ->
  not X == Y.

xOr2(X,Y) ->
  X =/= Y.

xOr3(X,Y) ->
  (X and not Y) or (not X and Y).

maxThree(X,Y,Z) ->
  max(X, max(Y,Z)).

howManyEqual(X,X,X) ->
  3;
howManyEqual(X,X,_) ->
  2;
howManyEqual(_,X,X) ->
  2;
howManyEqual(X,_,X) ->
  2;
howManyEqual(_,_,_) ->
  0.
