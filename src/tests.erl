-module(tests).
-export([run/0]).
-export([pass/0]).
-export([done/0]).

-import(shapes).
-import(shapes_test).

-import(sum).
-import(sum_test).

pass() ->
  io:format(".").

done() ->
  io:format("~n").

run() ->
  shapes_test:run(),
  sum_test:run().
