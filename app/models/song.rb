class Song < ActiveRecord::Base
	belongs_to :artist

	validates :name, presence: true
	validates :name, uniqueness: { scope: :artist, case_sensitive: false }
	validates :artist_id, presence: true
	validates :rating, presence: true

end
