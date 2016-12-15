class TopicsController < ApplicationController

  def search
    @allTopics = Topic.all
    #
      @search_topic = Topic.where(["title ILIKE ?", "%#{params[:title]}%"])
  end

  def index

    @allTopics = Topic.all
  end

  def new

    topic = Topic.new
    topic.title = params[:title]
    topic.date = params[:date]
    topic.description = params[:description]
    topic.image = params[:image]
    topic.source = params[:source]
    topic.author = params[:author]
    topic.notes = params[:note]

    topic.save

  end


  def show


    render :show
  end

end
