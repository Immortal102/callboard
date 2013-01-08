require 'spec_helper'

describe AdminsController do
  render_views
  include Devise::TestHelpers
   before(:each) do
      @advert = Factory(:advert)
      @admin = Factory(:admin)
      @category = Factory(:category)
    end
  describe "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end
     it "should have the right title" do
      get :index
      response.should have_selector("title", :content => "Admins index page")
end
  end

    describe "GET 'show'" do
    it "returns http success" do
      get :show, :id => @advert
      response.should be_success
    end
         it "should have the right title" do
      get :show, :id => @advert
      response.should have_selector("title", :content => "Admins show page")
    end
  end

describe "GET 'edit'" do
    it "returns http success" do
      get :edit, :id => @advert
      response.should be_success
    end
         it "should have the right title" do
      get :edit, :id => @advert
      response.should have_selector("title", :content => "Edit advert page")
    end
  end

end