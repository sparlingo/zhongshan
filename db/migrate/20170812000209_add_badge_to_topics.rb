class AddBadgeToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :badge, :text
  end
end
