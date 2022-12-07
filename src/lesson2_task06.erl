%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Dec 2022 18:56
%%%-------------------------------------------------------------------
-module(lesson2_task06).
-author("artemselezen").

%% API
-export([main/0, palindrome/1]).

palindrome(L)->
  L == lesson2_task05:reverse(L).


main()->
  erlang:display(lesson2_task06:palindrome([1,2,3,2,1])),
  true.
