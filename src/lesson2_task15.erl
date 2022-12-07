%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 19:31
%%%-------------------------------------------------------------------
-module(lesson2_task15).
-author("artemselezen").

%% API
-export([main/0, replicate/2]).

replicate(List, Num) -> replicate(List, Num, Num).
replicate([_H | T], Num, 0) -> replicate(T, Num, Num);
replicate([H | T], Num, N) -> [H | replicate([H | T], Num, N-1)];
replicate([],_,_) -> [].

main()->
  erlang:display(replicate([a,b,c], 3)),
  true.
