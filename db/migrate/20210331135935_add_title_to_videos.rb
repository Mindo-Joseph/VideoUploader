class AddTitleToVideos < ActiveRecord::Migration[6.1]
  def change
    add_column :videos, :title, :string
    add_column :videos, :column, :string
  end
end
