class CreateMockIngreds < ActiveRecord::Migration[6.0]
  def change
    create_table :mock_ingreds do |t|
      t.references :mocktail, null: false, foreign_key: true
      t.references :measurement, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
