class Product < ApplicationRecord
  validates :name ,presence: true,length: {minimum: 5,maxnimum:50}
  validates :decsription ,presence: true,length: {minimum: 5,maxnimum:50}
end