require "test_helper"

class LessonVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_video = lesson_videos(:one)
  end

  test "should get index" do
    get lesson_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_video_url
    assert_response :success
  end

  test "should create lesson_video" do
    assert_difference('LessonVideo.count') do
      post lesson_videos_url, params: { lesson_video: {  } }
    end

    assert_redirected_to lesson_video_url(LessonVideo.last)
  end

  test "should show lesson_video" do
    get lesson_video_url(@lesson_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_video_url(@lesson_video)
    assert_response :success
  end

  test "should update lesson_video" do
    patch lesson_video_url(@lesson_video), params: { lesson_video: {  } }
    assert_redirected_to lesson_video_url(@lesson_video)
  end

  test "should destroy lesson_video" do
    assert_difference('LessonVideo.count', -1) do
      delete lesson_video_url(@lesson_video)
    end

    assert_redirected_to lesson_videos_url
  end
end
