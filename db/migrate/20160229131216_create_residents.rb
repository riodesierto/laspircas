class CreateResidents < ActiveRecord::Migration
  def up
    create_table :residents do |t|
    	t.string "address"
    end
  end

  def down
  	drop_table :residents
  end
  
end
