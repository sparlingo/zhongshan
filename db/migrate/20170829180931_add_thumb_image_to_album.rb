class AddThumbImageToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :thumb_image, :string
  end
end
