%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 19:27
%%%-------------------------------------------------------------------
-module(lesson2_task09).
-author("artemselezen").

%% API
-export([main/0, pack/1]).

pack(List) -> pack(List, []).
pack([], _) -> [];
pack([H, H | T], L) -> pack([H | T], [H | L]);
pack([H | T], L) -> [[H | L] |  pack(T,[] )].

main()->
  erlang:display(lesson2_task09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e])),
  true.
