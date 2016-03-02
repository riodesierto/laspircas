class CreatePlates < ActiveRecord::Migration
  def up
    create_table :plates do |t|
    	t.string "tag_value"
    	t.string "plate"
    	t.integer "antenna"
    	t.string "filename"
    	t.timestamps
    end
  end

  def down
  	drop_table :plates
  end
end
