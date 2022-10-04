class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_is_not_found
    #GET /user:id
    def show
      render json:find_user,include: :items 
    end

    private
    def find_user
        user=User.find(params[:id])
    end

    def render_record_is_not_found
        render json:{error:"Record is not found!"}, status: :not_found
    end

end
