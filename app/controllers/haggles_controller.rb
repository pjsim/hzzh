class HagglesController < ApplicationController
  def new
    @product = Product.first
  end
  def show
    @product = Product.first
    @haggles = Haggle.all
  end
  def index
    @haggles = Haggle.all
  end
end
