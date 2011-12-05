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
	while inotifywait -qr -e close_write src test; do make test; done
