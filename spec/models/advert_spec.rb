 require 'spec_helper'

describe Advert do
 before(:each) do
    @attr = {:title => "sample_title", :email => "sample@mail.ru", :description => "Description for example", :address => "sample_addr",
    		  :city => "Sample city" }
  end

 it "should create a new instance given valid attributes" do
    Advert.create!(@attr)
  end
describe "should require" do

    it "an email" do
   	no_name_user = Advert.new(@attr.merge(:email => ""))
    no_name_user.should_not be_valid
  end

    it "a description" do
   	no_name_user = Advert.new(@attr.merge(:description => ""))
    no_name_user.should_not be_valid
  end

    it "a title" do
   	no_name_user = Advert.new(@attr.merge(:title => ""))
    no_name_user.should_not be_valid
  end

    it "a city" do
   	no_name_user = Advert.new(@attr.merge(:city => ""))
    no_name_user.should_not be_valid
  end
end

describe "should reject a short " do
 it "city" do
    short_name = "a" * 2
    short_name_user = Advert.new(@attr.merge(:city => short_name))
    short_name_user.should_not be_valid
  end

   it "title" do
    short_name = "a" * 2
    short_name_user = Advert.new(@attr.merge(:title => short_name))
    short_name_user.should_not be_valid
  end

   it "description" do
    short_name = "a" * 9
    short_name_user = Advert.new(@attr.merge(:description => short_name))
    short_name_user.should_not be_valid
  end
end

   it "should reject a long description" do
    long_name = "a" * 201
    long_name_user = Advert.new(@attr.merge(:description => long_name))
    long_name_user.should_not be_valid
  end

   it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
    valid_email_user = Advert.new(@attr.merge(:email => address))
    valid_email_user.should be_valid
	end
 end

 it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
    invalid_email_user = Advert.new(@attr.merge(:email => address))
    invalid_email_user.should_not be_valid
	end
 end
end