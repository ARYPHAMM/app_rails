class Product < ApplicationRecord
  belongs_to :user
  has_many :product_categories
  has_many :categories, through: :product_categories
  validates :name ,presence: true,length: {minimum: 2,maxnimum:50}
  validates :decsription ,presence: true,length: {minimum: 2,maxnimum:50}
  validates :user_id,presence:true
end