class Team < ApplicationRecord
	has_many :players
	belongs_to :league

	has_attached_file :logo, styles: { large: "600x600#", medium: "300x300#", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
	validates_attachment_file_name :logo, matches: [/png\z/, /jpe?g\z/]
	validates_with AttachmentSizeValidator, attributes: :logo, less_than: 1.megabytes
end
