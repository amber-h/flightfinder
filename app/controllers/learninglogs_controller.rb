class LearninglogsController < ApplicationController

  def index
    render json: Learninglog.all
  end

  def show
    render json: Learninglog.find(params[:id])
  end

end
