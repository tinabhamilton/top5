class Artist < ActiveRecord::Base
	has_many :songs

	validates :name, presence: true
	validates :name, uniqueness: { case_sensitive: false}
end
