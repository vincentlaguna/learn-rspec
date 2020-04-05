$LOAD_PATH << "."
require 'crud'

users = [
  { username: "vincent", password: "password" },
  { username: "kevin", password: "password1" },
  { username: "dwight", password: "password2" },
  { username: "angela", password: "password3" },
  ]
  
hashed_users = Crud.create_secure_users(users)
puts hashed_users