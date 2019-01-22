user_pwd_array = [
    {user: "Sujit", password: "sujit"},
    {user: "Ram", password: "ram"},
    {user: "John", password: "john"},
    {user: "Jim", password: "jim"},
    {user: "Tom", password: "tom"}
]

def auth_user(user, pwd, user_pwd_array)
  user_pwd_array.each do |user_pwd|
    if(user_pwd[:user] == user && user_pwd[:password] == pwd)
      return user_pwd
    end
  end
  print "Authentication failed!"
end

continue = true
while continue
  print "User Name: "
  user = gets.chomp
  print "Password: "
  pwd = gets.chomp

  user_pwd = auth_user(user, pwd, user_pwd_array)

  print user_pwd
  puts
  print "Do you want to continue (y/n) : "
  intent = gets.chomp
  if intent == 'y'
    continue = true
  else
    continue = false
  end
end

