namespace :db do
	desc "Populate Video"
	task populate: :environment do
		Video.destroy_all
		20.times do
			Video.create(
				title: Faker::RickAndMorty.character,
				url: "https://www.youtube.com/watch?v="+Faker::Lorem.word,
				description: Faker::Lorem.paragraphs(2).join(' '))
		end		
	end
end