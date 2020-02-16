class AddForeignKeyToListeds < ActiveRecord::Migration[6.0]
  def change
    add_column :listeds, :house_id, :integer
  end
end
