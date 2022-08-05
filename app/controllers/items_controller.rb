class ItemsController < ApplicationController
  before_action :set_item, only: :show

  # GET /items/nano_id
  def show
    if @item.expired?
      @item.destroy
      redirect_to new_item_url, notice: "Opps! It's expired."
    end
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to show_url(@item.nano_id), notice: "File upload successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find_by(nano_id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:file)
    end
end
