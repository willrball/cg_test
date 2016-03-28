require 'rspec/core/rake_task'
require 'ci/reporter/rake/rspec'

desc 'Test Login'
RSpec::Core::RakeTask.new(:login) do |task|
  task.pattern = 'spec/login_spec.rb'
end

task login: 'ci:setup:rspec'
