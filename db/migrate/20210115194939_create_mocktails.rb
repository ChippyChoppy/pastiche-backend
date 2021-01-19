class CreateMocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :mocktails do |t|
      t.string :name
      t.string :image
      t.string :glassware
      t.string :instructions
      t.integer :rating
      t.string :about
      t.string :creator

      t.timestamps
    end
  end
end
