class ShoesController < ApplicationController

  def index
    @store = Store.find(params[:store_id])
    @shoes = @store.shoes
  end

  def new
    @shoe = Shoe.new
    @store = Store.find(params[:store_id])
  end

  def create
    @shoe = Shoe.new(shoes_params)
    @store = Store.find(params[:store_id])
    @shoe.store_id = @store.id
    if @shoe.save
      redirect_to store_shoes_path(@store)
    else
      render('new')
    end
  end

  def destroy

  end

  private

  def shoes_params
    params.require(:shoe).permit(:name, :color)
  end

end
