class Character
  attr_reader :name,
              :id,
              :photo,
              :allies,
              :enemies,
              :affiliation
              
  def initialize(attributes)
    @id = attributes[:_id]
    @name = attributes[:name]
    @photo = attributes[:photoUrl]
    @allies = attributes[:allies].join(", ")
    @enemies = attributes[:enemies].join(", ")
    @affiliation = attributes[:affiliation]
  end
end