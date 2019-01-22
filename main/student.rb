class Student
  include Auth
  # No need to write explicit getters/setters
  attr_accessor :first_name, :last_name, :email
  @first_name
  @last_name
  @email

  def initialize(firstName, lastName, email)
    @first_name = firstName
    @last_name = lastName
    @email = email
  end

  # Printing the object
  def to_s
    "Name: #{@first_name} #{@last_name} , email: #{@email}"
  end
end

tom = Student.new(nil, nil, nil)
tom.first_name = "Tom"
tom.last_name = "Alter"
tom.email = "t.m@g.com"
puts tom

sujit = Student.new("Sujit", "Singh", "a.b@c.com")
puts sujit

hashed_pwd = sujit.create_hash_digest(sujit.first_name)
puts hashed_pwd



