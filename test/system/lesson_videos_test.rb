require "application_system_test_case"

class LessonVideosTest < ApplicationSystemTestCase
  setup do
    @lesson_video = lesson_videos(:one)
  end

  test "visiting the index" do
    visit lesson_videos_url
    assert_selector "h1", text: "Lesson Videos"
  end

  test "creating a Lesson video" do
    visit lesson_videos_url
    click_on "New Lesson Video"

    click_on "Create Lesson video"

    assert_text "Lesson video was successfully created"
    click_on "Back"
  end

  test "updating a Lesson video" do
    visit lesson_videos_url
    click_on "Edit", match: :first

    click_on "Update Lesson video"

    assert_text "Lesson video was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson video" do
    visit lesson_videos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson video was successfully destroyed"
  end
end
