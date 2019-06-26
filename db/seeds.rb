10.times do
  User.create email: FFaker::Internet.email, name: FFaker::Name.name
end
