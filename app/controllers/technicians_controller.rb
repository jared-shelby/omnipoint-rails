class TechniciansController < ApplicationController

    def index
        @business = Business.find(params[:business_id])
        @service = Service.find(params[:service_id])
        @technicians = @business.find_technicians_by_service(@service)
    end

end
