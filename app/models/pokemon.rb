class Pokemon < ApplicationRecord
  has_and_belongs_to_many :types, class_name: 'PokemonType'

  dragonfly_accessor :image

  # def types=(types)
  #   self.pokemon_types = PokemonType.where(name: types)
  # end
end
