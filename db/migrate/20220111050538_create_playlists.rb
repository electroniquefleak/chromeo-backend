class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.string :name
      t.jsonb :tracks
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
