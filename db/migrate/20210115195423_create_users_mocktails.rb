class CreateUsersMocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :users_mocktails do |t|
      t.references :user, null: false, foreign_key: true
      t.references :mocktail, null: false, foreign_key: true
      t.boolean :r_and_d
      t.boolean :favorite

      t.timestamps
    end
  end
end
