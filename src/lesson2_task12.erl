%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 19:47
%%%-------------------------------------------------------------------
-module(lesson2_task12).
-author("artemselezen").

%% API
-export([main/0, decode_modified/1]).

decode_modified(List) -> decode_modified(List, 1).
decode_modified([], 1) -> [];
decode_modified([{Num, Str} | T], 1) -> decode_modified([Str | T], Num);
decode_modified([H | T], 1) -> [H | decode_modified(T, 1)];
decode_modified([Str | T], Num) -> [Str | decode_modified([Str | T], Num-1)].

main() ->
  erlang:display(lesson2_task12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}])),
  true.
