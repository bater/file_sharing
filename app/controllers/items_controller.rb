class ItemsController < ApplicationController
  before_action :set_item, only: :show

  # GET /items/nano_id
  def show
    if @item.nil?
      redirect_to root_url, notice: "Opps! File not found."
    elsif @item.expired?
      @item.destroy
      redirect_to root_url, notice: "Opps! It's expired."
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
      redirect_to show_url(@item.download_key), notice: "File upload successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find_by(nano_id: params[:id])
      @item = Item.find_by(custom_url: params[:id]) if @item.nil?
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:file, :custom_url)
    end
end
