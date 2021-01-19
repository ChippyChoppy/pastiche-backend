class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.string :imperial
      t.string :metric

      t.timestamps
    end
  end
end
