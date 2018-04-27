class Player < ApplicationRecord
	belongs_to :team, optional: true
	validates :name, :surname, :born, presence: true
	validates :name, :surname, length: { minimum: 2 }
	validates_date :born, :before => lambda { 15.years.ago },
					 :before_message => "Must be at least 15 years old"

	has_attached_file :image, styles: { large: "600x600#", medium: "300x300#", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/]
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes

	def country_name
 		country = self.country
 		ISO3166::Country[country]
 	end

	def self.search(term)
  		if term
    		where('name LIKE ? OR surname LIKE ?', "%#{term}%", "%#{term}%")
  		else
    		all
  		end
	end

end
