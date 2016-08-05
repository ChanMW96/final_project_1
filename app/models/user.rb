class User < ActiveRecord::Base
  include Clearance::User

	include Clearance::User
	has_many :projects, foreign_key: :user_id
	has_many :comments, foreign_key: :user_id
end
