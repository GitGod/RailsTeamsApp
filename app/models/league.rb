class League < ApplicationRecord
	has_many :teams, dependent: :delete_all
	validates :name, :country, presence: true
	validates :website, :format => URI::regexp(%w(http https))

	has_attached_file :logo, styles: { large: "600x600#", medium: "300x300#", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
	validates_attachment_file_name :logo, matches: [/png\z/, /jpe?g\z/]
	validates_with AttachmentSizeValidator, attributes: :logo, less_than: 1.megabytes

	def team_count
		Team.where(league: self).count
	end

	def self.search(term)
  		if term
    		where('name LIKE ?', "%#{term}%")
  		else
    		all
  		end
	end

end
