# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec_level_1.rb` to get started.

# LEVEL 1
def generate_username(name)
  #remove whitespace & downcase
  name[0].strip.downcase
end

# LEVEL 2
def generate_username(first, last)
  return nil if last.empty? || first.empty?
  first = first.gsub(/[^A-Za-z]/, '')
  last = last.gsub(/[^A-Za-z]/, '')
  (first[0] + last).downcase
end

# LEVEL 3
def format_name(first, last)
  return nil if last.empty? || first.empty?
  first = first.gsub(/[^A-Za-z]/, '')
  last = last.gsub(/[^A-Za-z]/, '')
  (first[0] + last).downcase
end

def format_year(year)
  year_string = year.to_s
  year_string.length == 4 ? year_string[2,2] : nil
end

def generate_username(first, last, year)
  name = format_name(first, last)
  return nil if name.nil?

  yy = format_year(year)
  return nil if yy.nil?

  name + yy
end


# LEVEL 4
$user_types = ["user", "seller", "manager", "admin"]

def check_privilege(type=0)
  $user_types[type]
end

def user_type_prefix(level)
  level > 0 ? check_privilege(level) + "-" : ""
end

def generate_username(first, last, year, level=0)
  name = format_name(first, last)
  return nil if name.nil?

  yy = format_year(year)
  return nil if yy.nil?

  user_type_prefix(level) + name + yy
end


# LEVEL 5

def build_username(first, last, year, level=0)
  name = format_name(first, last)
  return nil if name.nil?

  yy = format_year(year)
  return nil if yy.nil?

  user_type_prefix(level) + name + yy
end

$user_counts = {} # Hash of usernames, temporary storage
# Key: username string. (Keys are always unique).
# Value: username count.

def generate_username(first, last, year, level=0)
  username = build_username(first, last, year, level)

  if $user_counts[username].nil?
    $user_counts[username] = 0; # initialize count at zero
    username
  else
    $user_counts[username] +=1 # increment username count
    user_count = $user_counts[username].to_s
    username + "_" + user_count
  end

end
