class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :neighborhood
      t.string :name

      t.timestamps
    end
  end
end
