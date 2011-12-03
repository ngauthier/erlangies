# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'shell' do
  watch(/^src\/.*erl$/) {|m| `rm -f *.beam; erlc -Ddebug src/*.erl`}
  watch(/.*erl$/) {|m| system("escript main.erl && notify-send 'hooray' || notify-send 'boo'")}
end

guard 'bundler' do
  watch 'Gemfile'
end
