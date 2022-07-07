class AppointmentsController < ApplicationController

    # page content updates depending on the step in the appointment process the user is on
    def new
        if params[:business_id].nil?
            redirect_to "/"
        else
            @business = Business.find(params[:business_id])
            @services = @business.services
            @service = Service.find(params[:service_id]) unless params[:service_id].nil?
            @technicians = @business.find_technicians_by_service(@service) unless @service.nil?
            @technician = Technician.find(params[:technician_id]) unless (params[:technician_id].nil? || params[:service_id].nil?)
            @availability = @technician.available_times unless @technician.nil?
            @offer = Offer.find_by(service: @service, technician: @technician) unless (@service.nil? || @technician.nil?)
            @appointment = Appointment.new unless @offer.nil?
            @form_url = @offer.nil? ? "/appointments/new" : "/appointments"
            @form_method = @offer.nil? ? :get : :post
        end
    end

    # use client information & appointment details to create new appointment
    def create
        @appointment = Appointment.new(
            client: Client.find_or_create_by(name: params[:client_name], number: params[:client_number], email: params[:client_email]),
            offer: Offer.find_by(service_id: params[:service_id], technician_id: params[:technician_id]),
            time: AvailableTime.find(params[:time_id]).time
        )

        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            # flash error message
            render :new
        end
    end

    # show appointment confirmation page
    def show
        @appointment = Appointment.find(params[:id])
    end

    # create a download link for calendar invite with appointment information
    def calendar
        @appointment = Appointment.find(params[:id])
        cal = Icalendar::Calendar.new
        event = Icalendar::Event.new
        event.dtstart = @appointment.time
        event.summary = "Your appointment at #{@appointment.business.name} with #{@appointment.technician.name} for #{@appointment.service.name}."
        event.url = appointment_path(@appointment)
        cal.add_event event
        send_data cal.to_ical, type: 'text/calendar', disposition: 'attachment', filename: "appointment.ics"
    end
end
