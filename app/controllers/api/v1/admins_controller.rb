class Api::V1::AdminsController < ApplicationController
    def create
        @admin = Admin.create(admin_params)
        if @admin.valid?
            @token = encode_token({admin_id: @admin.id})
            render json: { admin: AdminSerializer.new(@admin), jwt: @token}, status: :created
        else
            render json: { error: 'failed to create admin' }, status: :unprocessable_entity
        end
    end

    def index
        @admins = Admin.all
        render json: @admins, status: :ok
    end

    def show
        @admins = find_admin
        render json: @admins, serializer: AdminSerializer, status: :ok
    end

    def profile
        render json: { user: AdminSerializer.new(current_user) }, status: :accepted
    end

    def update
        @admin = find_admin
            @admin.update(admin_params)
            render json: @admin, status: :ok
    end

    #DELETE /@admins/:id
    def destroy
        #find & destroy
        @admin = find_admin
            @admin.destroy
            head :no_content
    end

    private

    def admin_params
       params.permit(:first_name, :last_name, :email, :password, :role)
    end

    def render_not_found
        render json: {message: "Admin not found" }, status: :not_found
    end

    def find_admin
        Admin.find(params[:id])
    end
end
