require_relative "environment"

set :environment, Rails.env
set :output, "log/cron_job.log"

# puts "Crontab is run on #{@environment}"
# puts "Crontab is logged on #{@output}"

def server_timezone time
  Time.zone.parse(time).localtime
end

every :day, at: server_timezone("09:00 am") do
  command "echo 'example command'"
end

every 1.minutes do
  rake "user:create_random"
  runner "User.create_random"
end
