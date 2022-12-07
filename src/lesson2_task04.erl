%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Dec 2022 20:31
%%%-------------------------------------------------------------------
-module(lesson2_task04).
-author("artemselezen").

%% API
-export([main/0, len/1]).

len(List) -> len(List,0).
len([_|List], Counter) -> len(List, Counter+1);
len([],Counter) -> Counter.

main()->
  erlang:display(lesson2_task04:len([])),
  true.
