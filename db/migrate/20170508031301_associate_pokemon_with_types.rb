class AssociatePokemonWithTypes < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pokemons, :pokemon_types
    add_index :pokemon_types_pokemons, [:pokemon_id, :pokemon_type_id], unique: true
  end
end
