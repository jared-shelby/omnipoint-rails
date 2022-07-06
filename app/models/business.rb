class Business < ApplicationRecord
    has_many :technicians
    has_many :offers, through: :technicians
    has_many :services, -> { distinct }, through: :offers
    has_many :appointments, through: :offers
    has_many :clients, through: :appointments

    def find_technicians_by_service(service)
        self.technicians.filter { |technician| technician.services.include? service }
    end

end
