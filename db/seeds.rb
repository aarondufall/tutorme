# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

schools = %w(Havard Stanford Yale UBC SFU)
degrees = %w(Physics Commerce Marketing Law)
specializations = ["Canadian Studies", "Zoology", "Statistics", "Oceanography"]
subjects = ["The science of Harry Potter", "Pornograpy historian","The Vampire in Literature and Cinema",'Elvish, the language of "Lord of the Rings"', "UFOs In American Society"]


10.times do 
	profile = Profile.create( first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, bio: Faker::Lorem.paragraph(10) )
	(1 + rand(4)).times do
		profile.educations.create(school: schools.shuffle.first, degree: degrees.shuffle.first, specialization: specializations.shuffle.first)
	end
	(1 + rand(4)).times do
		profile.subjects.create(name: subjects.shuffle.first, level: "Year #{1 + rand(12)}")
	end
end