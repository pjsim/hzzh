module API
  class ProductsController < ApplicationController
    def index
      # products = Product.all
      # render json: products, status: 200
      @products = Product.all
    end
    def show
      product = Product.find(params[:id])
      render json: product, status: 200
    end
  end
end
