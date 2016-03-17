class Visitor < ActiveRecord::Base

	belongs_to :resident
	
 	validates_presence_of :resident_id, :patente

	scope :sorted, lambda { order("created_at DESC") }

end
