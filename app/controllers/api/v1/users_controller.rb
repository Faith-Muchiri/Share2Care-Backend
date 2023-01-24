class Api::V1::UsersController < ApplicationController
    # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

   skip_before_action :authorized, only: [:create, :index]
    
    
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

end
