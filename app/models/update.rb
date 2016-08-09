class Update < ActiveRecord::Base
	belongs_to :individual
	belongs_to :company
	belongs_to :project
end
