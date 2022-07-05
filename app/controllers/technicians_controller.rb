class TechniciansController < ApplicationController

    def index
        @business = Business.find(params[:business_id])
        @service = Service.find(params[:service_id])
    end

end
