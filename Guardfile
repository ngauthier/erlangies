# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'shell' do
  watch(/.*erl$/) {|m|
    system(
      "rake && notify-send -t 5000 'hooray' || notify-send -t 5000 'boo'"
    )
  }
end

guard 'bundler' do
  watch 'Gemfile'
end
