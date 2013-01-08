class AdvertsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @title="Advert index page"
    @adverts=Advert.all
  end

  def new
    @title="New advert page"
    @advert=Advert.new
    @categories=Category.all
  end

  def create
    @new_adv=Advert.new(params[:advert])
    @new_adv.save
    redirect_to root_path
  end

  def show
    respond_to do |format|
    format.html {@title="Advert show page"
                 @category=Category.find(params[:id])
                 @adverts=@category.adverts}
    format.js {@advert=Advert.find(params[:id])}
    end
  end  
end
