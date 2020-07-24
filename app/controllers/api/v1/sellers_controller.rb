class Api::V1::SellersController < ApplicationController
    
    def index
        binding.pry
        @seller = Seller.all
        
        render json: @seller, status: 200
    end


    def new
        @seller = Seller.new
        render json: @seller
    end

    def show
        @seller = Seller.find(params[:id])
        render json: @seller, status: 200
    end

    def create
        @seller = Seller.new(seller_params)
        if  @seller.save     
        render json: @seller, status: 200
        else
        render 'new'
        end
    end

    def show
        @seller = Seller.find(params[:id])
        render json: @seller
    end

    def edit
        @seller = Seller.find(params[:id])
        render json: @seller, status:200
    end

    def update
        if @seller.update(seller_params)
            render json: @seller, status: 200
        else
            render 'edit'
        end
    end

    def destroy
        @seller = Seller.find(params[:id])
        @seller.destroy
    end

    private

    def seller_params
        params.require(:seller).permit(:propertyType, :propertyValue, :timeFrame,:state, :city, :zipCode, :fullName, :phoneNumber    )
    end

end
