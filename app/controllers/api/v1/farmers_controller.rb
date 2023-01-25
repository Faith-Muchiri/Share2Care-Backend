class Api::V1::FarmersController < Api::V1::UsersController


    # def create
    #     @farmer = Farmer.create(farmer_params)
    #     if @farmer.valid?
    #         @token = encode_token({farmer_id: @farmer.id})
    #         render json: { farmer: FarmerSerializer.new(@farmer), jwt: @token}, status: :created
    #     else
    #         render json: { error: 'failed to create farmer' }, status: :unprocessable_entity
    #     end
    # end

    def index
        @farmers = Farmer.all
        render json: @farmers, status: :ok
    end

    def show
        @farmers = Farmer.find(params[:id])
        render json: @farmers, serializer: farmerSerializer, status: :ok
    end

    # def profile
    #     render json: { user: FarmerSerializer.new(current_user) }, status: :accepted
    # end


      #PATCH   /farmers/:id
    def update
        @farmer = find_farmer
            @farmer.update(farmer_params)
            render json: @farmer, status: :ok
    end

    #DELETE /@farmers/:id
    def destroy
        #find & destroy
    @farmer = find_farmer
            @farmer.destroy
            head :no_content
    end

    private

    def farmer_params
       params.permit(:first_name, :last_name, :email, :password, :role)
    end

    def render_not_found
        render json: {message: "Farmer not found" }, status: :not_found
    end

    def find_farmer
        Farmer.find(params[:id])
    end
end
