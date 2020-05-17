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
  fib(N, 0, 1).

fib(0, Curr, _Next) ->
  Curr;

fib(N, Curr, Next) ->
  fib(N - 1, Next, Curr + Next).

% Perfect Number, Tail Recursive
% (Perfect: when a positive integer is the sum of its divisors)
% (e.g. 6 = 1 + 2 + 3, 28 = 1 + 2 + 4 + 7 + 14)
perfect(N) ->
  perfect(N, 1, 0).

perfect(N, N, Sum) ->
  N == Sum;

perfect(N, P, Sum) when N rem P == 0 ->
  perfect(N, P + 1, Sum + P);

perfect(N, P, Sum) ->
  perfect(N, P + 1, Sum).
