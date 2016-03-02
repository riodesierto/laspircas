class CreateVisitors < ActiveRecord::Migration
  def up
    create_table :visitors do |t|
    	t.integer "resident_id"
    	t.string "name"
    	t.string "rut"
    	t.string "tag_value"
    	t.timestamps
    end
    add_index("visitors", "resident_id")
  end

  def down
  	drop_table :visitors
  end

end
