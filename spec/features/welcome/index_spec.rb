require 'rails_helper'

describe 'Welcome Index' do
  before :each do
    visit '/'
  end

  describe "Select Fire Nation and click Search" do
    it "has a field to select nation" do
      within '#nation' do
        expect(page).to have_content("Fire Nation")
      end 
    end

    it "selecting fire nation and clicking Search for members routes to /search" do
      select 'Fire Nation', from: "nation"
      click_button "Search For Members"

      expect(page.status_code).to eq(200)
      expect(current_path).to eq("/search")
    end
  end
end

