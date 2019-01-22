dial_book_hash = {
    "Newyork" => "212",
    "San Francisco" => "301",
    "Lancaster" => "717",
    "Miami" => "305",
    "Palo Alto" => "650"
}

def get_city_names(hash)
  hash.keys
end

def get_code(hash, city)
  hash[city]
end

continue = true
while continue
  puts get_city_names(dial_book_hash)

  print "Enter City : "
  city = gets.chomp
  if(dial_book_hash.include?city)
    code = get_code(dial_book_hash, city)
    print "Code : #{code}"
  else
    print "Invalid city"
  end

  puts

  print "Do you want to continue (y/n) : "
  intent = gets.chomp
  if intent == 'y'
    continue = true
  else
    continue = false
  end
end