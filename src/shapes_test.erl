-module(shapes_test).
-export([run/0]).

-import(shapes).

run() ->
  io:format("Shapes Test:"),

  4 = shapes:area({square,2}),
  tests:pass(),

  9 = shapes:area({square,3}),
  tests:pass(),

  tests:done().
