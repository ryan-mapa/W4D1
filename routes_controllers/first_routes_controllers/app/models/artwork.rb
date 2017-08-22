class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true, uniqueness: true

  has_many :artwork_shares
  # primary_id: :id,
  # foreign_key: :artwork_id,
  # class_name: :ArtworkShares

  # belongs_to :artist
    # primary_id: :id,
    # foreign_key: :artist_id,
    # class_name: :User

    belongs_to :artist, foreign_key: :artist_id, class_name: 'User'

end
