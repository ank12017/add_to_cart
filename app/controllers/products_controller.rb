class ProductsController < ApplicationController
def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end
def show
	@product = Product.find(params[:id])
	@order_item = current_order.order_items.new
end
def new
    @product = Product.new
end
def create
   @product = Product.new(product_params)
    if @product.save
        	   redirect_to @product
         else 
        	   render 'new'
          end
      end
      private
      def product_params
         params.require(:product).permit(:image, :name, :price, :discription, :order_id)
     end
end
