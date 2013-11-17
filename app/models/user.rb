class User < ActiveRecord::Base
	has_one :profile
	accepts_nested_attributes_for :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def with_profile
  	self.profile.build
  	self
  end
end
