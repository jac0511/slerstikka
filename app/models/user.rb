class User < ActiveRecord::Base
	has_many :retsepts
	has_and_belongs_to_many :shakes
  # Include default devise modules. Others available are:
  # :confirmable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable
end
