class Plate < ActiveRecord::Base
  	
	scope :sorted, lambda { order("created_at DESC") }
	
end