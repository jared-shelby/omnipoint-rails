class BusinessesController < ApplicationController

    def index
        @businesses = Business.all
    end


    def welcome
        @business = Business.find(params[:business_id])
        redirect_to business_path(@business)
    end

    def show
        @business = Business.find(params[:id])
    end

end
