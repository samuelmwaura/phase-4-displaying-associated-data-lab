class Item < ApplicationRecord
  belongs_to :user #Generates the user instance method that relates an item to a specific user.
end
