class AddMetadataToGif < ActiveRecord::Migration
  def change
    add_column :gifs, :width, :integer
    add_column :gifs, :height, :integer
    add_column :gifs, :size, :integer
  end
end
