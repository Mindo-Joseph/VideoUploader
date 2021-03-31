class VideosController < ApplicationController
    def index
        @videos = Video.all
    end

    def show
    
    end
    def new
        @video = Video.new
    end
end
