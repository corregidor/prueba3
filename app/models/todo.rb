class Todo < ApplicationRecord
	validates :description, :presence => {:message => "No puede estar	 vacío"}
end
