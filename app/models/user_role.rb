class UserRole < ActiveRecord::Base
	has_many :user_user_role
	has_many :user, :through => :user_user_role
end
