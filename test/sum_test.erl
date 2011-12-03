-module(sum_test).
-include_lib("eunit/include/eunit.hrl").

sum_1_1_test() -> ?assertEqual(1, sum:sum(1)).
sum_1_2_test() -> ?assertEqual(3, sum:sum(2)).
sum_1_3_test() -> ?assertEqual(6, sum:sum(3)).

sum_2_bad_range_test() -> ?assertEqual({error, bad_range}, sum:sum(5,4)).
sum_2_1_2_test() -> ?assertEqual(3, sum:sum(1,2)).
sum_2_5_7_test() -> ?assertEqual(18, sum:sum(5,7)).
