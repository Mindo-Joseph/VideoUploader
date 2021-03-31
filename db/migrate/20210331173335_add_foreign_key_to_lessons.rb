class AddForeignKeyToLessons < ActiveRecord::Migration[6.1]
  def change
    add_reference :lesson_videos, :lesson, foreign_key:true
  end
end
