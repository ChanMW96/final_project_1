class Company < ActiveRecord::Base
	has_secure_password
  has_many :fundings, foreign_key: :company_id
	has_many :projects, foreign_key: :company_id
	has_many :comments, foreign_key: :company_id
end
