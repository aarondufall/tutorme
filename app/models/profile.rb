class Profile < ActiveRecord::Base
	has_many :educations 
	has_many :subjects
end
