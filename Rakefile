require 'rake/testtask'

Rake::TestTask.new do |_task|
  $LOAD_PATH.unshift('lib', 'spec')
  Dir.glob('./spec/**/*_spec.rb') {|f| require f }
end

task default: 'test'