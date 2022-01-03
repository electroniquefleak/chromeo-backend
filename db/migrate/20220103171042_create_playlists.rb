class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :playlist_id
      t.string :spotify_playlist_id

      t.timestamps
    end
  end
end
