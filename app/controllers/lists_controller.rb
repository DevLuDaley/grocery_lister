class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
#    raise @lists.inspect
    # implicit rendering
    # render 'site/index'
    # render 'controller/action'
    # render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
  end

  def create
#raise params.inspect      
  end
end
