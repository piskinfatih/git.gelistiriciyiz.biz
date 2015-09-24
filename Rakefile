# -*- encoding: utf-8 -*-
require "bundler/setup"

task :default => ["preview"]

desc "Ön izleme / geliştirme sunucusu"
task :preview do
  system "middleman"
end

desc "Deploy"
task :deploy do
  system "middleman deploy"
end
