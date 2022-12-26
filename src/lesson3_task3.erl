%%%-------------------------------------------------------------------
%%% @author artemselezen
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Dec 2022 16:30
%%%-------------------------------------------------------------------
-module(lesson3_task3).
-author("artemselezen").

%% API
-export([main/0, split/2]).
split(Binary, Chars) ->
  split(Binary, Chars, 0, 0, []).

split(Bin, Chars, Idx, LastSplit, Acc)
  when is_integer(Idx), is_integer(LastSplit) ->
  Len = (Idx - LastSplit),
  case Bin of
    <<_:LastSplit/binary,
      This:Len/binary,
      Char,
      _/binary>> ->
      case lists:member(Char, Chars) of
        false ->
          split(Bin, Chars, Idx+1, LastSplit, Acc);
        true ->
          split(Bin, Chars, Idx+1, Idx+1, [This | Acc])
      end;
    <<_:LastSplit/binary,
      This:Len/binary>> ->
      lists:reverse([This | Acc]);
    _ ->
      lists:reverse(Acc)
  end.

main()->
  BinText = <<"Col1:Col2:Col3:Col4">>,
  erlang:display(split(BinText,":")),
  true.