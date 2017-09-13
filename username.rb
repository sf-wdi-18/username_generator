# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if first.length == 0
    p nil
  elsif last.length == 0
    p nil
  else
    first_name = first.delete(" ")
    last_name = last.delete(" ")
    first_init = first_name[0]
    name_temp = first_init + last_name
    name_v1 = name_temp.delete(" ").downcase
    p name_v1
  end
end

def format_year(year)
  stringy = year.to_s
  if stringy.length > 4
    p nil
  elsif stringy.length < 4
    p nil
  else
    p stringy[2..3]
  end
end

def build_username(first_name, last_name, birth_year, i)
  user_type_prefix+format_name(first_name,last_name)+format_year(birth_year)
end

def check_privilege(i = 'user')
  if i < 2
    'seller'
  elsif i.between?(2,3)
    'manager'
  elsif i >= 3
    'admin'
  elsif i < 1
    'user'
  end
end

def user_type_prefix
  check_privilege(i) + '-'
end
