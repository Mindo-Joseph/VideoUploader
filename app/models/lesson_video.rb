class LessonVideo < ApplicationRecord
    has_one_attached :video
    belongs_to :lesson, foreign_key: 'lesson_id', optional: true
end
