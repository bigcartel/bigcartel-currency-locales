#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rake'
require 'rspec/core/rake_task'

require 'appraisal'

desc "Run all examples"
if Module.const_defined? "RSpec"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = %w[--color]
  end
else
  Spec::Rake::SpecTask.new(:spec)
end

task :default => [:spec]
