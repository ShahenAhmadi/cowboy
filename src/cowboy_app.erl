%%%-------------------------------------------------------------------
%% @doc cowboy public API
%% @end
%%%-------------------------------------------------------------------

-module(cowboy_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    cowboy_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
