class CategoriesController < ApplicationController
  def index
  	@categories=Category.all
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  def new
  end

  def destroy
  end

  def create
  end
end
