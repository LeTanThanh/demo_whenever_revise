namespace :user do
  desc "Create random user"

  task create_random: :environment do
    puts "RUNNING rake user:create_random"
    user = User.create email: FFaker::Internet.email, name: FFaker::Name.name
    puts "CREATED user: #{user.inspect}"
  end
end
