class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.integer :lesson_id, index: true
      t.timestamps
    end
  end
end
