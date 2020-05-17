-module(tail_recursion).
-export([sum/1, fib/1, perfect/1]).

% Sum, Tail Recursive
sum(N) ->
  sum(N, 0).

sum(0, P) ->
  P;

sum(N, P) ->
  sum(N - 1, P + N).

% Fibonacci, Tail Recursive
fib(N) ->
  fib(N - 1, 0, 1).

fib(0, _P, Q) ->
  Q;

fib(N, P, Q) ->
  fib(N - 1, Q, P + Q).

% Perfect Number, Tail Recursive
% (Perfect: when a positive integer is the sum of its divisors)
% (e.g. 6 = 1 + 2 + 3, 28 = 1 + 2 + 4 + 7 + 14)
perfect(N) ->
  perfect(N, 1, []).

perfect(N, PossibleDivisor, Divisors) -> 
  Sum = lists:sum(Divisors),
  if 
    Sum == N ->
      true;
    Sum > N ->
      false;
    N rem PossibleDivisor == 0 ->
      perfect(N, PossibleDivisor + 1,[PossibleDivisor | Divisors]);
    true ->
      perfect(N, PossibleDivisor + 1, Divisors)
  end.
