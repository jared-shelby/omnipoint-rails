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
        @services = @business.services
    end

    def edit
        @business = Business.find(params[:id])
    end

    def update
        @business = Business.find(params[:id])
        @business.assign_attributes(business_params)

        if @business.save
            flash[:notice] = "Business has been updated in the OmniPoint system!"
            redirect_to business_path(@business)
        else
            flash[:notice] = "Please address the following errors:"
            flash[:errors] = @business.errors.full_messages
            render :edit
        end
    end

    private

    # strong params for business
    def business_params
        params.require(:business).permit(:name, :location)
    end

end
