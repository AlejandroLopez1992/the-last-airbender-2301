require "rails_helper"

RSpec.describe Character do
  it "exists" do
    attrs = {
      name: "King",
      _id: 4,
      photoUrl: "fun.jpg",
      allies: ["Sonic"],
      enemies: ["Buggs Bunny"],
      affiliation: "Fire Nation"
    }

    character = Character.new(attrs)
    expect(character).to be_a Character
    expect(character.name).to eq("King")
    expect(character.id).to eq(4)
    expect(character.photo).to eq("fun.jpg")
    expect(character.allies).to eq("Sonic")
    expect(character.enemies).to eq("Buggs Bunny")
    expect(character.affiliation).to eq("Fire Nation")
  end
end