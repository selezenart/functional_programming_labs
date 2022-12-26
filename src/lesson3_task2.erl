%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Dec 2022 21:01
%%%-------------------------------------------------------------------
-module(lesson3_task2).
-author("artemselezen").

%% API
-export([main/0 ,words/1]).


words(Bin) when is_binary(Bin) ->
  words(Bin, <<>>, []).


words(<<$ :8, Rest/binary>>, <<>>, Result) ->
  words(Rest, <<>>, Result);
words(<<$ :8, Rest/binary>>, Buffer, Result) ->
  words(Rest, <<>>, [Buffer|Result]);
words(<<Char:8, Rest/binary>>, Buffer, Result) ->
  words(Rest, <<Buffer/binary, Char>>, Result);
words(<<>>, <<>>, Result) ->
  lists:reverse(Result);
words(<<>>, Buffer, Result) ->
  lists:reverse([Buffer|Result]).

main()->
  BinText = <<"Some text">>,
  erlang:display(words(BinText)),
  true.
