class ProductController < ApplicationController

  def index
    @products=Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new

    @products.name = params[:product][:name]
    @products.description = params[:product][:description]
    @products.price = params[:product][:price]


    if @products.save
      # if the picture gets saved, generate a get request to "/pictures" (the index)
      redirect_to "/products"
    else
      # otherwise render new.html.erb
      render :new
    end
  end









end
