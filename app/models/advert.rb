class Advert < ActiveRecord::Base
  attr_accessible :address, :category_id, :city, :description, :email, :title
  belongs_to :category
  belongs_to :user
  regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :city,:title,  :presence => true,
  						   :length => {:minimum => 3}
  validates :email, :presence   => true,
                    :format     => { :with => regex }
  validates :description, :presence => true,
  						  :length => {:within => 10..200}
end
