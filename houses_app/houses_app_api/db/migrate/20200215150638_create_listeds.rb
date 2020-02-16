class CreateListeds < ActiveRecord::Migration[6.0]
  def change
    create_table :listeds do |t|
      t.integer :listed_price
      t.integer :sold_price

      t.timestamps
    end
  end
end
