class Post < ActiveRecord::Base
  belongs_to :user
  validates :description, 
  :title, 
  :replyto, 
  :price, 
  :street,
  :cross_street,
  :city,
  :state,
  :postal, 
  presence :true
end
