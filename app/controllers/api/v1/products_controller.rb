class Api::V1::ProductsController < ApplicationController
    def index
        @products = Product.all
        render json: @products
    end

    def create
        @product = Product.create(product_params)
        if @product.valid?
        render json: { product: ProductSerializer.new(@product) }, status: :created
        else
            render json: { error: 'failed to create product' }, status: :unprocessable_entity
        end
    end


    def show
        @product = find_product
        render json: @product, serializer: ProductSerializer, status: :ok
    end


    def update
        @product = find_product
            @product.update(product_params)
            render json: @product, status: :ok
    end

    #DELETE /@products/:id
    def destroy
        #find & destroy
        @product = find_product
            @product.destroy
            # head :no_content
            render json: {message: "product deleted successfully"}

    end

    private

    def product_params
        params.permit(:user_id, :product, :quantity, :date_donated, :status)
    end
 
     def render_not_found
         render json: {message: "product not found" }, status: :not_found
     end
 
     def find_product
         Product.find(params[:id])
     end
end
