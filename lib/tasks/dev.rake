desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  usernames = []

  usernames << "alice"
  usernames << "bob"

  # Adding some fake names to the array
  10.times do
    usernames << Faker::Name.first_name.downcase
  end

  usernames.each do |username|
    User.create(
      email: "#{username}@example.com",
      password: "password",
      username: username,
      private: [true, false].sample,
    )
  end
end
