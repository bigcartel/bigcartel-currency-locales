#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rake'
# We have different tasks for rspec-rails between rails 2 and 3
begin
  require 'rspec/core/rake_task'
rescue LoadError
  require 'spec/rake/spectask'
end

require 'appraisal'

desc "Run all examples"
if Module.const_defined? "RSpec"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = %w[--color]
  end
else
  Spec::Rake::SpecTask.new(:spec) do |t|
    t.spec_opts = %w[--color]
  end
end

task :default => [:spec]
