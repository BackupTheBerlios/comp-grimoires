#!/bin/sh
exec erl -pa /usr/lib/erlang/lib/esdl-0.93.0909/ebin  \
   -pa /usr/lib/erlang/lib/wings/ebin -run wings_start start_halt ${1+"$@"}
