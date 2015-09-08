# THIS FILE PERFORMS RSPEC TESTS ON `username.rb`
# TO RUN YOUR TESTS TYPE: `rspec username_spec.rb`

require "./username.rb"

describe "#check_privilege (a new method!)" do
  let (:user_types) { ["user", "seller", "manager", "admin"] }

  it "returns the corresponding privilege prefix" do
    user_types.each_with_index do |utype, i|
      expect( check_privilege(i) ).to eq utype
    end
  end

  it "defaults to the 'user' privilege level" do
    expect( check_privilege ).to eq user_types[0]
  end

end

describe "#generate_username, level 4" do

  it "prefixes usernames with a user_type" do
    expect( generate_username("john", "doe", 1945, 1) ).to eq "seller-jdoe45"
    expect( generate_username("john", "doe", 1945, 2) ).to eq "manager-jdoe45"
    expect( generate_username("john", "doe", 1945, 3) ).to eq "admin-jdoe45"
  end

  it "does not prefix level 0 usernames with 'user-'" do
    expect( generate_username("John", "Doe", 1945, 0) ).to eq "jdoe45"
  end

  it "defaults to type 'user' if no privilege level is specified" do
    expect( generate_username("John", "Doe", 1945) ).to eq "jdoe45"
  end

end
