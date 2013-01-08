class Category < ActiveRecord::Base
  attr_accessible :title
  has_many :adverts

  validates :title, :presence => true,
  					:length => {:maximum => 20},
  					:uniqueness => true
end
