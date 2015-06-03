def generate_username1(name)
  #remove whitespace & downcase
  name[0].strip.downcase
end

def generate_username2(first, last)
  #check to see if last is empty
  return nil if last.empty?
  #call generate_username 1 & remove special characters/whitespace then downcase
  generate_username1(first) + last.gsub(/[^A-Za-z]/, '').downcase
end

def generate_username3(first, last, year)
  #convert year to a string
  year_string = year.to_s
  #check to see that it's equal to 4 digits
  return nil if year_string.length != 4
  #call generate_username2 and pluck out last two digits
  generate_username2(first, last) + year_string[2,2]
end

$user_types = ["user", "seller", "manager", "admin"]

def check_privilege(type=0)
  $user_types[type]
end

def generate_username4(first, last, year, type=0)
  return generate_username3(first, last, year) if type == 0
  check_privilege(type) + "-" + generate_username3(first, last, year)
end

$users = {}

def generate_username5(first, last, year)
  #generate a username
  user = generate_username4(first, last, year)

  # Use a hash to take advantage of the uniqueness constraint on keys.
  # Store the current username count as the value
  if $users[user].nil?
    # initialize at zero
    $users[user] = 0;
    user
  else
    # increment username count
    $users[user] +=1
    # append the number to the username
    user + "_" + $users[user].to_s
  end
    
end
