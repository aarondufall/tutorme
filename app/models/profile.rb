class Profile < ActiveRecord::Base
	belongsTo  :user
	has_many :educations 
	has_many :subjects


	def name
		"#{first_name} #{last_name}"
	end
end
