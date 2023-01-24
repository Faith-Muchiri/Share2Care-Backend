class Api::V1::UsersController < ApplicationController
    # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

   skip_before_action :authorized, only: [:create, :index, :show]
    
    
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), jwt: @token}, status: :created
        else
            render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end


    private

    def user_params
       params.permit(:first_name, :last_name, :email, :password, :role)
    end
end
