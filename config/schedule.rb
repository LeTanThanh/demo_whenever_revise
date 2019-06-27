require_relative "environment"

set :environment, Rails.env
set :output, "log/cron_job.log"

# puts "Crontab is run on #{@environment}"
# puts "Crontab is logged on #{@output}"

every 1.minutes do
  command "echo 'example command'"
  rake "user:create_random"
  runner "User.create_random"
end
