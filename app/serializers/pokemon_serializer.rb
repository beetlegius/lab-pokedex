class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :weight, :height, :image_url
  belongs_to :types

  def image_url
    object.image.url
  end
end
