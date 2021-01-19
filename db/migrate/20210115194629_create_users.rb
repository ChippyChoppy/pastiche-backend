class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :image
      t.string :location
      t.string :bio
      t.boolean :profesh

      t.timestamps
    end
  end
end
