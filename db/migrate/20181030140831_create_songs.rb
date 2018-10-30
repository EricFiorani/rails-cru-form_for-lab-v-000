class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.genre_id :integer

      t.timestamps null: false
    end
  end
end
