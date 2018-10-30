class CreateArtist < ActiveRecord::Migration
  def change
    create_table :artist do |t|
      t.string :name
      t.text :bio

      t.timestamps null: false
    end
  end
end
