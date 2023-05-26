require 'rails_helper' 

describe "Search index page" do


  describe "Page Display" do
    it "Displays the total number of people who live in the Fire Nation" do
      visit "/"
      select 'Fire Nation', from: "nation"
      click_button "Search For Members"

      expect(page).to have_content("Fire Nation Members:")
      expect(page).to have_content(@characters.count)
    end

    it "Displays a list with information for 25 members of the fire nation" do
      within("#charachters")
    end
  end
end