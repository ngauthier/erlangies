-module(shapes).
-export([area/1]).

area({square, Side}) ->
  Side * Side;

area({circle, Radius}) ->
  3.1415926 * Radius * Radius;

area({triangle, A, B, C}) ->
  S = (A + B + C) / 2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));

area(_) ->
  {error, invalid_object}.
