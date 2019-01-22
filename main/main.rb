require_relative 'auth'

# $LOAD_PATH << "."
# require 'userauth'

users = [
    { username: "tom", password: "password1" },
    { username: "sks", password: "password2" },
    { username: "don", password: "password3" },
    { username: "cook", password: "password4" },
    { username: "ruby", password: "password5" }
]

users = Auth.create_secure_users(users)

puts users

