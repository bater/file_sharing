class AddNanoIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :nano_id, :string
  end
end
