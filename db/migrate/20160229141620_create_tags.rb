class CreateTags < ActiveRecord::Migration
  def up
    create_table :tags do |t|
    	t.integer "resident_id"
    	t.string "tag_value"
    end
    add_index("tags", "resident_id")
  end

  def down
  	drop_table :tags
  end
end
