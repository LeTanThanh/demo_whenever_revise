require_relative "environment"

set :environment, Rails.env
set :output, "log/cron_job.log"

# puts "Crontab is run on #{@environment}"
# puts "Crontab is logged on #{@output}"

every 1.minutes do
  rake "user:create_random"
end
