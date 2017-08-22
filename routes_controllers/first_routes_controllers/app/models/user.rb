class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artwork_shares
  # primary_id: :id,
  # foreign_key: :viewer_id,
  # class_name: :ArtworkShares

  has_many :artwork
    # primary_id: :id,
    # foreign_key: :artist_id,
    # class_name: :Artwork
end
