# -*- encoding: utf-8 -*-
require "bundler/setup"

task :default => ["preview"]

desc "Start preview / development server"
task :preview do
  system "middleman"
end

desc "Run as production (dynamic) server"
task :production do
  system "rackup"
end

desc "Deploy"
task :deploy do
  system "middleman deploy"
end
