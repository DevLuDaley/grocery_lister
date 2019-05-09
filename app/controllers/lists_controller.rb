class ListsController < ApplicationController
  def index
    @lists = List.all
#    raise @lists.inspect
    # implicit rendering
    # render 'site/index'
    # render 'controller/action'
  end
end
