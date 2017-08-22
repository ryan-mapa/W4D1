class CreateArtworkTable < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.string :artist_id, null: false
      t.timestamps
    end
  end
end
