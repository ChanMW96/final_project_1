class Project < ActiveRecord::Base
	acts_as_taggable
	searchkick
	belongs_to :individual, default: nil
	belongs_to :company, default: nil
	has_many :updates, foreign_key: :project_id
	has_many :comments, foreign_key: :project_id
	has_many :fundings, foreign_key: :project_id
end
