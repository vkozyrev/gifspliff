class CreateGifParts < ActiveRecord::Migration
  def change
    create_table :gif_parts do |t|
      t.integer :child_gif_id
      t.integer :parent_gif_id
      t.text :frame_data

      t.timestamps null: false
    end
  end
end
