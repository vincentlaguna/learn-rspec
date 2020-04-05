$LOAD_PATH << "."
require 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :username, :email, :password
  
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end
  
  def to_s
    "First name: #{@first_name}, Last Name: #{@last_name}, 
    Username: #{@username}, Email address: #{@email}"
  end
end

vincent = Student.new("Vincent", "Laguna", "vincentlaguna",
"vincent@example.com", "1234")
john = Student.new("John", "Doe", "johndoe",
"john@example.com", "4321")

hashed_password = vincent.create_hash_digest(vincent.password)
puts hashed_password
