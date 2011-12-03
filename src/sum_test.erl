-module(sum_test).
-export([run/0]).

sum_1_test() ->
  1 = sum:sum(1),
  tests:pass(),
  3 = sum:sum(2),
  tests:pass(),
  6 = sum:sum(3),
  tests:pass().

sum_2_test() ->
  {error, bad_range} = sum:sum(5,4),
  tests:pass(),

  3 = sum:sum(1,2),
  tests:pass(),

  18 = sum:sum(5,7),
  tests:pass().

run() ->
  io:format("Sum Test:"),

  sum_1_test(),
  sum_2_test(),

  tests:done(),
  true.
