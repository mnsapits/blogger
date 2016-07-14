class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def index
    @tags = Tag.all
  end
  
  def destroy
    @tag = Tag.find(params[:id]).delete
    @tags = Tag.all
    
    redirect_to tags_path(@tags)
  end

end
