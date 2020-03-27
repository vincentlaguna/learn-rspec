# My initial answer, it displays the user when correct and exits when
# incorrect, however it displays the else conditional "Wrong, please try again"
# regardless if the input was correct...
=begin
user = [
  { username: "vincent", password: "123" },
  { username: "user", password: "pass" }
]

print "Welcome to the authenticator\n"
print "----------------------------\n"
print "This program will take input from the user and authenticate with
correct password\n"
print "Press x to quit or any other key to continue: "

  if gets.chomp == 'x'
    exit
  else
    print "provide username and password\n"
    print "Username: "  
    username_input = gets.chomp
    print "Password: "
    password_input = gets.chomp
  end
    
  user.each do |user|
    if user[:username] == username_input && user[:password] == password_input
      print user
    else  
      print "Wrong, please try again"
    end
  end
=end 

# Correct Answer:

users = [
  { username: "vincent", password: "123" },
  { username: "user", password: "pass" }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
    "Credentials were not correct"
end
  
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user ans compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4
