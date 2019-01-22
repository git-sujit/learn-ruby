
module Auth
  require 'bcrypt'

  puts "Module auth loaded."
  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def self.authenticate_user(user, pwd, user_list)
    user_list.each do |user_record|
      if user_record[:username] == user && verify_hash_digest(user_record[:password]) == pwd
        return user
      end
    end
    puts "Credentials are not correct"
  end
end

