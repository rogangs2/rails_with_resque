# adding resque tasks
require 'resque/tasks'
require "resque/scheduler/tasks"

namespace :resque do
  task :setup do
    require 'resque'
    Resque.redis = 'localhost:6379'
  end

  task :setup_schedule => :setup do
    require 'resque-scheduler'
  end

  task :scheduler => :setup_schedule
end