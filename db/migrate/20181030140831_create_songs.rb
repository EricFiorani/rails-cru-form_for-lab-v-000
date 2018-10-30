class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.artist_id :integer
      t.genre_id :integer

      t.timestamps null: false
    end
  end
end
