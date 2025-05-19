require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rake/extensiontask"

task :build => :compile

desc "Regenerate transpiled C from V source"
task :preprocess_v do
  Dir.chdir("ext/levenshtein_vvvvvv") do
    sh "v -gc none -shared -o levenshtein.c levenshtein.v"
  end
end

Rake::ExtensionTask.new("levenshtein_vvvvvv") do |ext|
  ext.lib_dir = "lib/levenshtein_vvvvvv"
end

task :default => [:clobber, :compile, :spec]
