class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def index
    @title="Admins index page"
    @adverts=Advert.all
  end
  
  def show
    @title="Admins show page"
    @advert=Advert.find(params[:id])
  end

  def edit
    @title="Edit advert page"
     @advert=Advert.find(params[:id])
  end

  def update
    @updated=Advert.find(params[:id])
    @updated.update_attributes(params[:update])
    redirect_to admin_path(:id => params[:id]),
    notice: 'Advert was successfully updated.'
  end

  def destroy
    @advert=Advert.find(params[:id])
    @advert.destroy
    redirect_to admins_path,
    notice: "Advert #{@advert.title} was deleted"
  end
end
