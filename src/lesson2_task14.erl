%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 19:34
%%%-------------------------------------------------------------------
-module(lesson2_task14).
-author("artemselezen").

%% API
-export([main/0, duplicate/1]).

duplicate([]) -> [];
duplicate([H | T]) -> [H,H | duplicate(T)].

main()->
  erlang:display(lesson2_task14:duplicate([a,b,c,c,d])),
  true.
