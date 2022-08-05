class AddCustomUrlToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :custom_url, :string
  end
end
