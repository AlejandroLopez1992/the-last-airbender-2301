require 'rails_helper' 

describe "Search index page" do
  before :each do
    visit '/search'
  end

  describe "Page Display" do
    it "Displays the total number of people who live in the Fire Nation" do
      # expect(page).to have_content()
    end

    it "Displays a list with information for 25 members of the fire nation" do

    end
  end
end