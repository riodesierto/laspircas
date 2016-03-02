class Visitor < ActiveRecord::Base

	belongs_to :resident
	
	scope :sorted, lambda { order("created_at DESC") }
end
