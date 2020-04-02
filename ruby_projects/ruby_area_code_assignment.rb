dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfransisco" => "301", 
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(h)
  h.keys
end

# Get area code based on a given hash key
def get_area_code(h, key)
  h[key]
end

# Execution flow
loop do
  puts "Do you want to look up code based on a city name? (y/n)"
  answer = gets.chomp.downcase
  break if answer != 'y'
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter city: "
  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "You have entered a city that is not on the list"
  end
end