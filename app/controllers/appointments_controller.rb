class AppointmentsController < ApplicationController

    def new
        if params[:business_id].nil?
            redirect_to "/"
        else
            @business = Business.find(params[:business_id])
            @services = @business.services
            @technicians = @business.technicians
            @service = Service.find(params[:service_id]) unless params[:service_id].nil?
            @technician = Technician.find(params[:technician_id]) unless (params[:technician_id].nil? || params[:service_id].nil?)
        end
    end
    def create
        puts params
        @appointment = Appointment.new(
            client: Client.find_or_create_by(name: params[:client_name], number: params[:client_number], email: params[:client_email]),
            offer: Offer.find_by(service_id: params[:service_id], technician_id: params[:technician_id])
        )

        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            # flash error message
            render :new
        end
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

end
