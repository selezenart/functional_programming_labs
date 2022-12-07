%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Dec 2022 20:32
%%%-------------------------------------------------------------------
-module(lesson2_task01).
-author("artemselezen").

%% API
-export([main/0, my_last/1]).

my_last([])->
  nil ;
my_last([H|[]])->
  H ;
my_last([_|T])->
  my_last(T) .

main()->
  io:format(lesson2_task01:my_last([a,b,c,d,e,f])),
  true.


