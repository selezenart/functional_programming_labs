%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 19:12
%%%-------------------------------------------------------------------
-module(lesson2_task07).
-author("artemselezen").

%% API
-export([main/0, flatten/1]).

flatten(List) -> flatten(List, []).
flatten([], List) -> List;
flatten([H | T], List) ->  flatten(H, flatten(T,List));
flatten(H, List) ->  [H | List].

main()->
  erlang:display(lesson2_task07:flatten([1,2,3,4,[5],[6,7]])),
  true.
