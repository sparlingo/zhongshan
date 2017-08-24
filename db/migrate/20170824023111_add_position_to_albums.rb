class AddPositionToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :position, :integer
  end
end
