class Appointment < ApplicationRecord
  belongs_to :offer
  belongs_to :client
end
