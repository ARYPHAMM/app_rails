class Product < ApplicationRecord
  belongs_to :user
  validates :name ,presence: true,length: {minimum: 2,maxnimum:50}
  validates :decsription ,presence: true,length: {minimum: 2,maxnimum:50}
  validates :user_id,presence:true
end