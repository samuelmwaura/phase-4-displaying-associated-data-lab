class ItemsController < ApplicationController
    #GET /items
    def index
        render json: Item.all, include: :user #Includes the user who is the buyer of the item
    end
end
