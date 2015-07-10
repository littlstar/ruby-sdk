require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'Generate gem documentation'
task :doc do
  system 'rm -rf doc/'
  system 'rdoc --exclude=/spec/'
end

namespace :minitest do
  Rake::TestTask.new(:all) do |t|
    t.libs << 'test'
    t.test_files = FileList['test/test_*.rb']
  end
end

task :default => 'minitest:all'
