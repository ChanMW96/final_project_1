class Project < ActiveRecord::Base
	acts_as_taggable
	belongs_to :company, default: nil
	belongs_to :user, default: nil
	has_many :updates, foreign_key: :project_id
	has_many :comments, foreign_key: :project_id
	has_many :fundings, foreign_key: :project_id
end
