class ListingsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authenticate_user!

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new secure_params
    if @listing.save
      redirect_to listings_path
    else
      render :action => 'new'
    end
  end

  def update
    @listing = Listing.find params[:id]
    if @listing.update_attributes secure_params
      redirect_to listings_path
    else
      render :action => :edit
    end
  end

  def show
    @listing = Listing.find params[:id]
  end

  def edit
    @listing = Listing.find params[:id]
  end

  def index
    @listings = Listing.all
  end

  private

  def secure_params
    params.require(:listing).permit(:state, :city, :country, :description, :price)
  end
end
