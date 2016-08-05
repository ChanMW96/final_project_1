class Funding < ActiveRecord::Base
	belongs_to :company, default: nil
	belongs_to :project, default: nil
end
