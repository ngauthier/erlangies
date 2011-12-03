# Erlangies

I was doing the ErlangDC excercises and like a true rubyist I started by setting up Guard and a test suite (in erlang) so I could TDD the exercises. Here they are!

## Usage

    bundle exec guard

If you touch/change any erl file it will compile the libraries then run `main.erl` which runs the test suite.

Manually:

    erlc src/*.erl && escript main.erl

