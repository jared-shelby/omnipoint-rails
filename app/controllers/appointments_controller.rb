class AppointmentsController < ApplicationController

    def new
        @business = Business.find(params[:business_id])
        @service = Service.find(params[:service_id])
        @technician = Technician.find(params[:technician_id])
        @appointment = Appointment.new(offer: Offer.find_by(service: @service, technician: @technician))
    end

    def create
        @appointment = Appointment.new(client_id: Client.find_or_create_by(name: params[:appointment][:client_name]))
    end

    def show

    end

end
