class NationService

  def characters_by_nation(nation)
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") do |faraday|
    end

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")

    JSON.parse(response.body, symbolize_names: true)
  end
end