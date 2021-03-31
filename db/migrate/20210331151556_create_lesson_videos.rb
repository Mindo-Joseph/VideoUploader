class CreateLessonVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_videos do |t|

      t.timestamps
    end
  end
end
