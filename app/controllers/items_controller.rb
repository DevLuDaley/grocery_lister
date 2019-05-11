class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id]) #find parent
    @item = @list.items.build(item_params)
    @item.save
    #raise params.inspect
    redirect_to list_path(@list)
  end


# def create
# #raise params.inspect
#     @item = Item.new
#     @item.description = params[:item][:description]
#     @item.save
#50th
    #redirect_to item_path(@item)
  # end


private
  def item_params
  params.require(:item).permit(:description)
  end

end
