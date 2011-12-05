REBAR=`which rebar || ./rebar`
all: deps compile
deps:
	@$(REBAR) get-deps
compile:
	@$(REBAR) compile
test: all
	@$(REBAR) skip_deps=true eunit
clean:
	@$(REBAR) clean
live:
	inotifywait -mqr -e close_write src/ test/ | while read line; do clear; make test; done
