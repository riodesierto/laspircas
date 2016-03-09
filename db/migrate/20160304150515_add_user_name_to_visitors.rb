class AddUserNameToVisitors < ActiveRecord::Migration
  def up
  	add_column :visitors, :autorized_by, :string
  end

  def down
  	remove_column :visitors, :autorized_by
  end
end
