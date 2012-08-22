require 'rubygems'
require 'bundler'

Dir['tasks/**/*.rake'].each { |task| load task }

task :default => [:spec]