class TagsController < ApplicationController
  before_filter :authenticate_user!, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

end
