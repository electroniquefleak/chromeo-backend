class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :spotify_ID
      t.boolean :explicit
      t.string :artist
      t.integer :length_ms
      t.string :art

      t.timestamps
    end
  end
end
