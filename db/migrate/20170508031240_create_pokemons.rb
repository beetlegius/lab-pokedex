class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :description
      t.string :image_uid
      t.string :image_name
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
