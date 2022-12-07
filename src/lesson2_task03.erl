%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Dec 2022 21:35
%%%-------------------------------------------------------------------
-module(lesson2_task03).
-author("artemselezen").

%% API
-export([main/0, element_at/2]).



element_at(List, Item) -> element_at(List, Item, 1).

element_at([], _, _)  -> undefined;
element_at([Item|_], Index, Index) -> Item;
element_at([_|Tl], Index,  Counter) -> element_at( Tl, Index, Counter+1).

main()->
  erlang:display(lesson2_task03:element_at([1,2,3,4,5,7], 12)),
  true.
