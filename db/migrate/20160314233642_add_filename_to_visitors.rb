class AddFilenameToVisitors < ActiveRecord::Migration
  def up
  	add_column :visitors, :antenna, :integer
  	add_column :visitors, :filename, :string
  	remove_column :visitors, :name
  	remove_column :visitors, :rut

  end

  def down
  	remove_column :visitors, :antenna
  	remove_column :visitors, :filename
  	add_column :visitors, :name, :string
  	add_column :visitors, :rut, :string
  end
end
