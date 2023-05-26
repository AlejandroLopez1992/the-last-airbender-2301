class SearchFacade
  def initialize(nation)
    @nation = nation
  end

  def characters
    service = NationService.new

    json = service.characters_by_nation(@nation)

    @characters = json.map do |character_data|
      Character.new(character_data)
    end
  end
end