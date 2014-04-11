class LearninglogsController < ApplicationController

  def index
    byebug
    render json: Learninglog.all
  end

  def show
    render json: Learninglog.find(params[:id])
  end

end
