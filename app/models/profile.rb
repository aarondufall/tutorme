class Profile < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	
	belongs_to  :user
	has_many :educations 
	has_many :subjects


	def name
		"#{first_name} #{last_name}"
	end
end
