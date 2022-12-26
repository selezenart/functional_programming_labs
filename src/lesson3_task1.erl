%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Dec 2022 13:01
%%%-------------------------------------------------------------------
-module(lesson3_task1).
-author("artemselezen").

%% API
-export([main/0, first_word_bin/1]).

first_word_bin(Bin) ->
  first_word_bin(ltrim(Bin), <<>>).

first_word_bin(<<>>, Acc) -> Acc;
first_word_bin(<<$\s, _/binary>>, Acc) -> Acc;
first_word_bin(<<X, Bin/binary>>, Acc) ->
  first_word_bin(Bin, <<Acc/binary, X>>).

ltrim(<<$\s, Bin/binary>>) -> ltrim(Bin);
ltrim(Bin) -> Bin.

main()->
  BinText = <<"Some text">>,
  erlang:display(first_word_bin(BinText)),
  true.

