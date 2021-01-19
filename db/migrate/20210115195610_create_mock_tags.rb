class CreateMockTags < ActiveRecord::Migration[6.0]
  def change
    create_table :mock_tags do |t|
      t.references :mocktail, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
