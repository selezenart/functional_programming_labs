%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 19:41
%%%-------------------------------------------------------------------
-module(lesson2_task11).
-author("artemselezen").

%% API
-export([main/0, encode_modified/1]).

encode_modified(List) -> encode_modified(List, 1).
encode_modified([], _) -> [];
encode_modified([H, H | T], Num) -> encode_modified([H | T], Num + 1);
encode_modified([H | T], 1) -> [ H | lesson2_task10:encode(T)];
encode_modified([H | T], Num) -> [{Num, H} | encode_modified(T, 1)].

main() ->
  erlang:display(lesson2_task11:encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e])),
  true.

