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
    @item = @list.items.build
  end

  def create
#raise params.inspect
    @list = List.new(list_params)
    #@list.name = params[:list][:name]
    if @list.save
      redirect_to list_path(@list) #50th
    else
      @lists = List.all
      render :index
    end
  end

  #mass assignment

  def list_params
    params.require(:list).permit(:name)
      
  end
end
