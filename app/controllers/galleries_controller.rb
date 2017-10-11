class GalleriesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_product

  def create
    gallery = @product.galleries.new(gallery_params)
    gallery.user = current_user

    gallery.save
    redirect_to @product

  end


  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def gallery_params
    params.require(:gallery).permit(:cover)
  end
end