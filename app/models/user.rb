class User < ApplicationRecord
  has_many :items #Generate an items instance method for every user to query its associated items
end
