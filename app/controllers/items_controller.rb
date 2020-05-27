class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id]) #find parent
    @item = @list.items.build(item_params)
    if @item.save
    #raise params.inspect
    redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end


# def create
# #raise params.inspect
#     @item = Item.new
#     @item.description = params[:item][:description]
#     @item.save
#50th
    #redirect_to item_path(@item)
  # end
# PATCH - /lists/:list_id/items/:id

def update
  #raise params.inspect
  #what do I want to update?
  @item = Item.find(params[:id])
  @item.update(item_params)

  redirect_to list_path(@item.list)

  # @item.status = params[:id][:status]
  # @item.save
end

def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(@item.list)
  end



private
  def item_params
  params.require(:item).permit(:description, :status)
  end

end
