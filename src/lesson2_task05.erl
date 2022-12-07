%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Dec 2022 20:58
%%%-------------------------------------------------------------------
-module(lesson2_task05).
-author("artemselezen").

%% API
-export([main/0, reverse/1]).

reverse(L) -> reverse(L,[]).
reverse([],NewList) -> NewList;
reverse([H|T],NewList) -> reverse(T,[H|NewList]).

main()->
  erlang:display(lesson2_task05:reverse([1,2,3,4])),
  true.