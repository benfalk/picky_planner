begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
rescue LoadError
  desc 'RuboCop rake task not available (RuboCop not installed)'
  task :rubocop do
    abort 'RuboCop rake task is not available. Be sure to install rubocop as a gem or plugin'
  end
end
