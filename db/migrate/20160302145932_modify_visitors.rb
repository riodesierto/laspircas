class ModifyVisitors < ActiveRecord::Migration
  def up
  	remove_column :visitors, :tag_value
  	add_column :visitors, :patente, :string
  end

  def down
  	remove_column :visitors, :patente
  	add_column :visitors, :tag_value, :string
  end
end
