class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.integer :frames
      t.binary :gif_blob
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
