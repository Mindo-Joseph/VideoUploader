class LessonVideosController < ApplicationController
  before_action :set_lesson_video, only: %i[ show edit update destroy ]

  # GET /lesson_videos or /lesson_videos.json
  def index
    @lesson_videos = LessonVideo.all
  end

  # GET /lesson_videos/1 or /lesson_videos/1.json
  def show
    @lesson_video = LessonVideo.find(params[:id])
  end

  # GET /lesson_videos/new
  def new
    @lesson_video = LessonVideo.new
  end

  # GET /lesson_videos/1/edit
  def edit
  end

  # POST /lesson_videos or /lesson_videos.json
  def create
    @lesson_video = LessonVideo.new(lesson_video_params)

    respond_to do |format|
      if @lesson_video.save
        format.html { redirect_to @lesson_video, notice: "Lesson video was successfully created." }
        format.json { render :show, status: :created, location: @lesson_video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lesson_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_videos/1 or /lesson_videos/1.json
  def update
    respond_to do |format|
      if @lesson_video.update(lesson_video_params)
        format.html { redirect_to @lesson_video, notice: "Lesson video was successfully updated." }
        format.json { render :show, status: :ok, location: @lesson_video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lesson_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_videos/1 or /lesson_videos/1.json
  def destroy
    @lesson_video.destroy
    respond_to do |format|
      format.html { redirect_to lesson_videos_url, notice: "Lesson video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_video
      @lesson_video = LessonVideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_video_params
      params.require(:lesson_video).permit(:video, :lesson_id)
    end
end
