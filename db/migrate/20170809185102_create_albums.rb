class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :subtitle
      t.string :main_image

      t.timestamps
    end
  end
end
