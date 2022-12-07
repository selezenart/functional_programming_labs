%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Dec 2022 21:05
%%%-------------------------------------------------------------------
-module(lesson2_task02).
-author("artemselezen").

%% API
-export([main/0, but_last/1]).


but_last([_A, _B] = L) -> L;
but_last([_|L]) -> but_last(L).

main()->
  erlang:display(lesson2_task02:but_last([a,b,c,d,e,f])),
  true.

