-module(fast_key).

-export([get/2]).
-export([get/3]).
-export([set/3]).

get(Key, Proplist)->
  get(Key, Proplist, undefined).

get(Key, Proplist, Default)->
  case lists:keyfind(Key, 1, Proplist) of
    false -> Default;
    {_, Value} -> Value
  end.

set(Key, Value, Proplist)->
  lists:keystore(Key, 1, Proplist, {Key, Value}).
