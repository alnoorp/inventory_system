class InventoriesController < ApplicationController
  helper_method :inventories

  def index
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)

    if @inventory.save
      redirect_to inventory_path(@inventory),
        notice: 'Inventory item successfully added'
    else
      render :new
    end
  end

  private

  def inventory_params
    params.require(:inventory).permit(:title, :description, :quantity)
  end
end
