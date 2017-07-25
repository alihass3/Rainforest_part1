class ProductsController < ApplicationController

  def index
    @products=Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]


    if @product.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/products" #would take it to show page of index
    else
      # otherwise render new.html.erb
      render :new
    end

  end









end
