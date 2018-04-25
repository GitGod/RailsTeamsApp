class Player < ApplicationRecord
	mount_uploader :picture, PictureUploader
	def country_name
		country = self.country
		ISO3166::Country[country]
	end

	validates :name, length: { minimum: 2 }
	validates :surname, length: { minimum: 2 }
	validates :picture, file_size: { less_than: 2.megabytes }
	validates :picture, presence: true, file_content_type: { allow: ['image/jpeg', 'image/png'] }
	validates_date :born, :before => lambda { 15.years.ago },
					 :before_message => "must be at least 15 years old"

	def self.search(term)
  		if term
    		where('name LIKE ? OR surname LIKE ?', "%#{term}%", "%#{term}%")
  		else
    		all
  		end
	end

end
