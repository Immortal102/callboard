 require 'spec_helper'

describe Category do
 before(:each) do
    @attr = {:title => "sample_cat" }
  end

 it "should create a new instance given valid attributes" do
    Category.create!(@attr)
  end

  it "should require a name" do
   	no_name_user = Category.new(@attr.merge(:title => ""))
    no_name_user.should_not be_valid
  end

 it "should reject names that are too long" do
    long_name = "a" * 21
    long_name_user = Category.new(@attr.merge(:title => long_name))
    long_name_user.should_not be_valid
  end

it "should reject duplicate email addresses" do
    # Put a user with given email address into the database.
    Category.create!(@attr)
    user_with_duplicate_email = Category.new(@attr)
    user_with_duplicate_email.should_not be_valid
end

end

