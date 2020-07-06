class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @user = current_user
    @products = Product.all
  end

  def show
    @user = current_user
    @product = Product.find(params[:id])
  end

  def new
    @user = current_user
    @product = Product.new
  end

  def create
    @user = current_user
    @product = product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
  end

  def destroy
    @user = current_user
  end
end
