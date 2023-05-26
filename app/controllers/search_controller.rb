class SearchController < ApplicationController

  def index
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") do |faraday|
    end

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")

    data = JSON.parse(response.body, symbolize_name: true)

    @characters = data.map do |character_data|
      Character.new(character_data)
    end
  end
end
