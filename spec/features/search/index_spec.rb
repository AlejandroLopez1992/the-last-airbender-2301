require 'rails_helper' 

describe "Search index page" do
  before :each do
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") do |faraday|
    end

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")

    data = JSON.parse(response.body, symbolize_name: true)

    @characters = data
  end

  describe "Page Display" do
    it "Displays the total number of people who live in the Fire Nation" do
      visit "/search"
      expect(page).to have_content("Fire Nation Members:")
      expect(page).to have_content(@characters.count)
    end

    it "Displays a list with information for members of the fire nation" do
      visit "/search"

      within("#person-#{@characters[0]["_id"]}") do
        expect(page).to have_content(@characters[0]["name"])
        expect(page).to have_content("None")
        expect(page).to have_content(@characters[0]["allies"].join(", "))
        expect(page).to have_content(@characters[0]["enemies"].join(", "))
        expect(page).to have_content(@characters[0]["affiliation"])
      end

      within("#person-#{@characters[1]["_id"]}") do
        expect(page).to have_content(@characters[1]["name"])
        expect(page).to have_content(@characters[1]["photoURL"])
        expect(page).to have_content(@characters[1]["allies"].join(", "))
        expect(page).to have_content(@characters[1]["enemies"].join(", "))
        expect(page).to have_content(@characters[1]["affiliation"])
      end
    end
  end
end