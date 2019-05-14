class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
    # render 'lists/index.html.erb'
#    raise @lists.inspect
    # implicit rendering
    # render 'site/index'
    # render 'controller/action'
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new
    #@item = @list.items.build #this was casing an error 22:00 v3
  end

  def create
#raise params.inspect
    @list = List.new(list_params)
    #@list.name = params[:list][:name]
    if @list.save
      redirect_to list_url(@list) #50th
#      redirect_to list_path(@list) #50th
    else
      @lists = List.all
      render :index
    end
  end

  #mass assignment
private
  def list_params
    params.require(:list).permit(:name)
  end
end
