-module(data_formatter_number@foreign).

-export([showNumberAsInt/1
        ,showNumberAsFloat/1]).

showNumberAsInt(N) ->
  integer_to_binary(trunc(N)).

showNumberAsFloat(N) ->
  [ Str] = io_lib:format("~w", [ N ]),
  list_to_binary(Str).


