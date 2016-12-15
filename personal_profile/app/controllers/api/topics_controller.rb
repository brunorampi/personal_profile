class Api::TopicssController < ApplicationController

  def index
    @topic = Topic.all

    # render json: trips

  end


end
