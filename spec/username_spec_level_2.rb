# THIS FILE PERFORMS RSPEC TESTS ON `username.rb`
# TO RUN YOUR TESTS TYPE: `rspec username_spec_level_2.rb`

require "./username.rb"

describe "#generate_username, level 2" do
  it "combines the first letter of the first name with the last name" do
    expect( generate_username("nathan", "allen") ).to eq "nallen"
    expect( generate_username("justin", "castilla") ).to eq "jcastilla"
    expect( generate_username("ilias", "tsangaris") ).to eq "itsangaris"
  end

  it "downcases the username" do
    expect( generate_username("Nathan", "Allen") ).to eq "nallen"
    expect( generate_username("Justin", "Castilla") ).to eq "jcastilla"
    expect( generate_username("ILIAS", "TSANGARIS") ).to eq "itsangaris"
  end

  it "removes extraneous whitespace" do
    expect( generate_username("nathan" , " allen ") ).to eq "nallen"
    expect( generate_username(" justin " , "castilla") ).to eq "jcastilla"
    expect( generate_username("mary lou", "smith jones") ).to eq "msmithjones"
  end

  it "handles empty strings" do
    expect( generate_username("nathan", "") ).to eq nil
    expect( generate_username("", "") ).to eq nil
    expect( generate_username("", "allen") ).to eq nil
  end

  it "BONUS: removes special characters in strings" do
    expect( generate_username("Nathan", "Allen!") ).to eq "nallen"
    expect( generate_username("'Ilias'", "Tsangaris.") ).to eq "itsangaris"
    expect( generate_username(" Justin ", "%20Castilla.") ).to eq "jcastilla"
  end
end
