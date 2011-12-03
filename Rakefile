task :default => :test

task :clean do
  `rm -f *.beam`
end

task :compile => :clean do
  system %{erlc -Ddebug src/*.erl}
end

task :test => :compile do
  results = `escript main.erl`
  if $?.success?
    STDOUT.write results
  else
    raise results
  end
end
