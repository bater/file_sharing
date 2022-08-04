class ItemsController < ApplicationController
  before_action :set_item, only: :show

  # GET /items/nano_id
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to item_url(@item.nano_id), notice: "File upload successfully!" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
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
