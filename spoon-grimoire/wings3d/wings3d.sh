#!/bin/sh
erl -pa /usr/lib/erlang/lib/esdl-0.93.0909/ebin  \
   /usr/share/wings/ebin -run wings_start start_halt
