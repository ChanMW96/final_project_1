class Individual < ActiveRecord::Base
  has_secure_password
  has_many :fundings, foreign_key: :individual_id
	has_many :projects, foreign_key: :individual_id
	has_many :comments, foreign_key: :individual_id
end
