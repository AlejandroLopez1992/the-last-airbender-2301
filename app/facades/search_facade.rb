class SearchFacade
  def initialize(nation)
    @nation = nation
  end

  def characters
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") do |faraday|
    end

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")

    data = JSON.parse(response.body, symbolize_names: true)

    @characters = data.map do |character_data|
      Character.new(character_data)
    end
  end
end