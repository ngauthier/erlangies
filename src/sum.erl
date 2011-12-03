-module(sum).
-export([sum/1]).
-export([sum/2]).

sum(A) when A > 0 ->
  A + sum(A-1);
sum(0) ->
  0.

sum(N,M) when N > M ->
  {error, bad_range};
sum(N,N) ->
  N;
sum(N,M) ->
  N + sum(N+1,M).
