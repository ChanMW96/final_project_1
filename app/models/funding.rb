class Funding < ActiveRecord::Base
	belongs_to :user, default: nil
	belongs_to :project, default: nil
end
