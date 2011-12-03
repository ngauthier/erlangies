#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname useless -mnesia debug verbose
-import(tests).
main(_) ->
  tests:run(),
  io:format("Tests Completed Successfully~n"),
  halt(0).
