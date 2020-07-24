class Api::V1::BuyersContainer < ApplicationController
    
    def index
        @buyers = Buyer.all
        render json: @buyers, status: 200
    end


    def new
        @buyer = Buyer.new
        render json: @buyer
    end

    def show
        @buyer = Buyer.find(params[:id])

        render json: @buyer, status: 200
    end

    def create
        @buyer = Buyer.new(buyer_params)
        if  @buyer.save    
        render json: @buyer, status: 200
        else
        render 'new'
        end
    end

    def show
        @buyer = Buyer.find(params[:id])
        render json: @buyer
    end

    def edit
        @buyer = Buyer.find(params[:id])
        render json: @buyer, status:200
    end

    def update
        if @buyer.update(buyer_params)
            render json: @buyer, status: 200
        else
            render 'edit'
        end
    end

    def destroy
        @buyer = Buyer.find(params[:id])
        @buyer.destroy
           # render json: {postId: @buyer.id}
    end

    private

    def buyer_params
        params.require(:buyer).permit(:propertyType, :propertyValue, :timeFrame,:state, :city, :zipCode, :fullName, :phoneNumber)
    end

end
