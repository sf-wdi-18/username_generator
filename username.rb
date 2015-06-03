def generate_username1 first_name
  return first_name[0].downcase
end

# using a splat argument allows us to return nil in the event
# of wrong number of arguments, rather than the program crashing
def generate_username2 *names
  # check if both names provided
  return nil if names.length < 2 || names.length > 2 || names[0] == "" || names[1] == ""
    # cast the strings to arrays
    first = names[0].split("")
    last = names[1].split("")
    # alphabetic characters only (also removes whitespaces)
    first.select! do |char|
      char =~ /[[:alpha:]]/
    end
    last.select! do |char|
      char =~ /[[:alpha:]]/
    end
    first[0].downcase + last.join.downcase
end

def generate_username3 first_name, last_name, birth_year
  return nil if birth_year.to_s.length != 4
  generate_username2(first_name, last_name) << birth_year.to_s[-2..-1]
end

$user_types = ["user", "seller", "manager", "admin"]

def check_privilege(type=0)
  $user_types[type]
end

def generate_username4(first_name, last_name, birth_year, type=0)
  return generate_username3(first_name, last_name, birth_year) if type == 0
  check_privilege(type) + "-" + generate_username3(first_name, last_name, birth_year)
end

$users = []

def generate_username5(first_name, last_name, birth_year)
  # generate the new user
  user = generate_username3(first_name, last_name, birth_year)
  # check to see how many instances (if any) of user already exist
  user_count = 0
  $users.each do |existing_user|
    # use a regular expression to find and count user instances
    user_count += 1 if existing_user =~ /#{user}*/
  end
  # append to user as necessary
  if user_count == 0
    $users.push(user)
  else
    user += ("_" + user_count.to_s)
    $users.push(user)
  end
  user
end



