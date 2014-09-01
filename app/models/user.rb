class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :user_user_role
  has_many :user_role, :through => :user_user_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
