class User < ApplicationRecord
  class << self
    def create_random
      puts "RUNNING runner User.create_random"
      user = User.create email: FFaker::Internet.email, name: FFaker::Name.name
      puts "CREATED user: #{user.inspect}"
    end
  end
end
