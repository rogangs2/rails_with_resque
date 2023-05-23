require "resque"
require "resque/server"
require "resque-scheduler"
require "resque/scheduler/server"

# to create cron jobs dynamically by resque-scheduler
Resque::Scheduler.dynamic = true

# setup for resque-shcheduler cron jobs
Resque.schedule = YAML.load_file "#{Rails.root}/config/schedule.yml"

# queues to be created
ENV['QUEUES'] = 'default,later,recurring_queue'

# logging resque outputs
Resque.logger = Logger.new("#{Rails.root}/log/resque.log")
Resque.logger.formatter = Resque::VeryVerboseFormatter.new
Resque.logger.level = Logger::DEBUG

# logging resque-scheduler outputs
Resque::Scheduler.configure do |c|
  c.verbose = true
  c.logfile = "#{Rails.root}/log/resque_scheduler.log"
  c.logformat = 'text'
end