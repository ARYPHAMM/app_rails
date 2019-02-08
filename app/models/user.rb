class User < ApplicationRecord
   validates :username ,presence: true,length: {minimum: 1,maxnimum:50}
end


