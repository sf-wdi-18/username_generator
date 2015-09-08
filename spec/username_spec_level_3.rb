# THIS FILE PERFORMS RSPEC TESTS ON `username.rb`
# TO RUN YOUR TESTS TYPE: `rspec username_spec_level_3.rb`

require "./username.rb"

describe "#generate_username, level 3" do

  it "adds the last two digits of the birth year to the username" do
    expect( generate_username("john", "doe", 1945) ).to eq "jdoe45"
    expect( generate_username("john", "doe", 2000) ).to eq "jdoe00"
    expect( generate_username("john", "doe", 2001) ).to eq "jdoe01"
  end

  it "requires the year to have four digits: YYYY" do
    expect( generate_username("john", "doe", 45) ).to eq nil
    expect( generate_username("john", "doe", 123) ).to eq nil
    expect( generate_username("john", "doe", 20111) ).to eq nil
  end

end
