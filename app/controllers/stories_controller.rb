class StoriesController < ApplicationController
  def show
    @story = Story.find(params[:id])
  end
  def index
    @stories = Story.all
  end
  def new

  end

  def create
    @story = Story.new(story_params)

    @story.save
    redirect_to @story
  end

  private
    def story_params
      params.require(:story).permit(:title, :body, :author_name, :author_location)
    end
end
