class Api::V1::DonationsController < ApplicationController
    
    def index
        @donations = Donation.all
        render json: @donations
    end

    def create
        @Donation = Donation.create(donation_params)
        if @donation.valid?
        render json: { donation: DonationSerializer.new(@donation) }, status: :created
        else
            render json: { error: 'failed to create donation' }, status: :unprocessable_entity
        end
    end


    def show
        @donation = find_donation
        render json: @donation, serializer: DonationSerializer, status: :ok
    end


    def update
        @donation = find_donation
            @donation.update(donation_params)
            render json: @donation, status: :ok
    end

    #DELETE /@donations/:id
    def destroy
        #find & destroy
        @donation = find_donation
            @donation.destroy
            # head :no_content
            render json: {message: "donation deleted successfully"}

    end

    private

    def donation_params
        params.permit(:user_id, :product, :quantity, :date_donated, :status)
    end
 
     def render_not_found
         render json: {message: "donation not found" }, status: :not_found
     end
 
     def find_donation
         Donation.find(params[:id])
     end
end
