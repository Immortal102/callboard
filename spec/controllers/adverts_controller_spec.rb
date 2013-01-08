require 'spec_helper'

describe AdvertsController do
  render_views
  include Devise::TestHelpers
   before(:each) do
      @user = Factory(:user)
      @advert = Factory(:advert)
      @category = Factory(:category)
    end
  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
     it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "Advert index page")
end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "New advert page")
end
  end

  describe "GET 'show' with ajax" do
    it "returns http success" do
      get :show, :id => @advert,:format =>"js"
      response.should be_success
    end
       it "should have the right title" do
      get :show, :id => @advert
      response.should have_selector("title", :content => "Advert show page")
    end
  end  

    describe "GET 'show'" do
    it "returns http success" do
      get :show, :id => @category
      response.should be_success
    end
         it "should have the right title" do
      get :show, :id => @category
      response.should have_selector("title", :content => "Advert show page")
    end
  end
end