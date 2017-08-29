class AddBodyToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :body, :text
  end
end
