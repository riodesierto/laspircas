class Visitor < ActiveRecord::Base

	belongs_to :resident
	
 	#validates_presence_of :name, :rut, :resident_id

	scope :sorted, lambda { order("created_at DESC") }

end
