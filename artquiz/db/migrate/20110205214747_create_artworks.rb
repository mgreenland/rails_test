class CreateArtworks < ActiveRecord::Migration
  def self.up
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.string :movement
      t.string :date
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :artworks
  end
end
