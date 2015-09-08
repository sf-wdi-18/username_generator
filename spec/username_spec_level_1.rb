# THIS FILE PERFORMS RSPEC TESTS ON `username.rb`
# TO RUN YOUR TESTS TYPE: `rspec username_spec_level_1.rb`

require "./username.rb"

describe "#generate_username, level 1" do
  it "returns the first letter of first_name" do
    expect( generate_username("ilias") ).to eq "i"
    expect( generate_username("justin") ).to eq "j"
    expect( generate_username("nathan") ).to eq "n"
  end

  it "lowercases the first letter of first_name" do
    expect( generate_username("Ilias") ).to eq "i"
    expect( generate_username("Justin") ).to eq "j"
    expect( generate_username("Nathan") ).to eq "n"
  end
end
