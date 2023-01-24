class Api::V1::ConsumersController < ApplicationController
    def create
        @consumer = Consumer.create(consumer_params)
        if @consumer.valid?
            @token = encode_token({consumer_id: @consumer.id})
            render json: { consumer: ConsumerSerializer.new(@consumer), jwt: @token}, status: :created
        else
            render json: { error: 'failed to create consumer' }, status: :unprocessable_entity
        end
    end

    def index
        @consumers = Consumer.all
        render json: @consumers, status: :ok
    end

    def profile
        render json: { user: ConsumerSerializer.new(current_user) }, status: :accepted
    end

    def show
        @consumer = Consumer.find(params[:id])
        render json: @consumer
        # , serializer: consumerHistoryShowSerializer, status: :ok
    end

      #PATCH   /consumers/:id
    def update
        @consumer = find_consumer
            @consumer.update(consumer_params)
            render json: @consumer, status: :ok
    end

    #DELETE /@consumers/:id
    def destroy
        #find & destroy
        @consumer = find_consumer
            @consumer.destroy
            head :no_content
    end
    

    private
    
    def consumer_params
       params.permit(:first_name, :last_name, :email, :password, :role)
    end

    def render_not_found
        render json: {message: "Consumer not found" }, status: :not_found
    end

    def find_consumer
        Consumer.find(params[:id])
    end
end
