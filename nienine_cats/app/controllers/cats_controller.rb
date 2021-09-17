class CatsController < ApplicationController
  def show
  end

  def index
    @cats = Cat.all
    render :index
  end
end
