-module(shapes_test).
-include_lib("eunit/include/eunit.hrl").

shapes_area_square_2_test() -> ?assertEqual(4, shapes:area({square, 2})).
shapes_area_square_3_test() -> ?assertEqual(9, shapes:area({square,3})).

shapes_area_circle_1_test() -> ?assertEqual(3.1415926, shapes:area({circle, 1})).
shapes_area_circle_2_test() -> ?assertEqual(4*3.1415926, shapes:area({circle, 2})).

shapes_area_triangle_2_3_4_test() -> ?assertEqual(2.9047375096555625, shapes:area({triangle, 2, 3, 4})).

shapes_area_invalid_test() -> ?assertEqual({error, invalid_object}, shapes:area({pony, 8, 12})).
