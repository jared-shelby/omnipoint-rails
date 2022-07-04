class Business < ApplicationRecord
    has_many :technicians
    has_many :offers, through: :technicians
    has_many :services, through: :offers
    has_many :appointments, through: :offers
    has_many :clients, through: :appointments
end
