# THIS FILE PERFORMS RSPEC TESTS ON `username.rb`
# TO RUN YOUR TESTS TYPE: `rspec username_spec_level_5.rb`

require "./username.rb"

describe "#generate_username, level 5" do

  it "it increments usernames that are already in use (uniqueness constraint)" do
    expect( generate_username("john", "doe", 1945) ).to eq "jdoe45"
    expect( generate_username("john", "doe", 1945) ).to eq "jdoe45_1"
    expect( generate_username("john", "doe", 1945) ).to eq "jdoe45_2"
    expect( generate_username("john", "doe", 1945) ).to eq "jdoe45_3"
  end

end
