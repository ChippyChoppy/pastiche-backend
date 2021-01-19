class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :users_mocktail, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
